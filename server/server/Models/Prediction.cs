using Accord.Math;
using Accord.Math.Optimization.Losses;
using Accord.Statistics.Filters;
using Accord.Statistics.Models.Regression.Linear;
using System.Collections.Generic;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Runtime.Intrinsics.X86;

namespace server.Models
{
    public class Prediction
    {
        double usageOneMonthAgo;
        double usageTwoMonthAgo;
        double usageOneYearAgo;
        double totalReqQty;
        string thisMonth;
        string season;
        double futureUsage;

        //properties
        public double UsageOneMonthAgo { get => usageOneMonthAgo; set => usageOneMonthAgo = value; }
        public double UsageTwoMonthAgo { get => usageTwoMonthAgo; set => usageTwoMonthAgo = value; }
        public double UsageOneYearAgo { get => usageOneYearAgo; set => usageOneYearAgo = value; }
        public double TotalReqQty { get => totalReqQty; set => totalReqQty = value; }
        public string ThisMonth { get => thisMonth; set => thisMonth = value; }
        public string Season { get => season; set => season = value; }
        public double FutureUsage { get => futureUsage; set => futureUsage = value; }

        //constructors
        public Prediction() { }
        public Prediction(double usageOneMonthAgo, double usageTwoMonthAgo, double usageOneYearAgo, double totalReqQty, string thisMonth, string season, double futureUsage)
        {
            this.UsageOneMonthAgo = usageOneMonthAgo;
            this.UsageTwoMonthAgo = usageTwoMonthAgo;
            this.UsageOneYearAgo = usageOneYearAgo;
            this.TotalReqQty = totalReqQty;
            this.ThisMonth = thisMonth;
            this.Season = season;
            this.FutureUsage = futureUsage;
        }


        //method
        public double[] GetPrediction()
        {
            //Create a dataset
            DBservices dbs = new DBservices();
            List<Prediction> list = dbs.ReadPrediction();
            int len70= (int)(list.Count * 70 / 100);

            //shuffled
            list = Shuffle(list);

            //Normalization
            double minReq = 1000;
            double minOneMonth = 1000;
            double minTwoMonth = 1000;
            double minOneYear = 1000;
            double maxReq = 0;
            double maxOneMonth = 0;
            double maxTwoMonth = 0;
            double maxOneYear = 0;

            foreach (Prediction p in list)
            {
                if (p.UsageOneMonthAgo < minOneMonth) minOneMonth = p.UsageOneMonthAgo;
                if (p.UsageOneMonthAgo > maxOneMonth) maxOneMonth = p.UsageOneMonthAgo;
                if (p.UsageTwoMonthAgo < minTwoMonth) minTwoMonth = p.UsageTwoMonthAgo;
                if (p.UsageTwoMonthAgo > maxTwoMonth) maxTwoMonth = p.UsageTwoMonthAgo;
                if (p.UsageOneYearAgo < minOneYear) minOneYear = p.UsageOneYearAgo;
                if (p.UsageOneYearAgo > maxOneYear) maxOneYear = p.UsageOneYearAgo;
                if (p.TotalReqQty < minReq) minReq = p.TotalReqQty;
                if (p.TotalReqQty > maxReq) maxReq = p.TotalReqQty;
            }

            ////minmax(list, ref minReq, ref minOneMonth, ref  minTwoMonth, ref  minOneYear, ref  maxReq, ref maxOneMonth, ref maxTwoMonth, ref maxOneYear);

            //Split data into training and testing sets
            object[][] instancesTrain = new object[len70][];
            object[][] instancesTest = new object[list.Count-len70][];
            double[] outputsTrain = new double[len70];
            double[] outputsTest = new double[list.Count-len70];


            for (int i = 0; i < len70; i++) //0-69
            {
                instancesTrain[i] = new object[]
                {
                (list[i].UsageOneMonthAgo - minOneMonth) / (maxOneMonth - minOneMonth),
                (list[i].UsageTwoMonthAgo - minTwoMonth) / (maxTwoMonth - minTwoMonth),
                (list[i].UsageOneYearAgo - minOneYear) / (maxOneYear - minOneYear),
                (list[i].TotalReqQty - minReq) / (maxReq - minReq), // normalize the totalReqQty column
                list[i].ThisMonth,
                list[i].Season
                };
                outputsTrain.SetValue(list[i].FutureUsage, i);
            }


            for (int i = 0; i < list.Count - len70; i++) //70-99
            {
                instancesTest[i] = new object[]
                {
                (list[len70+i].UsageOneMonthAgo - minOneMonth) / (maxOneMonth - minOneMonth),
                (list[len70+i].UsageTwoMonthAgo - minTwoMonth) / (maxTwoMonth - minTwoMonth),
                (list[len70 + i].UsageOneYearAgo - minOneYear) / (maxOneYear - minOneMonth),
                (list[len70+i].TotalReqQty - minReq) / (maxReq - minReq), // normalize the totalReqQty column
                list[len70+i].ThisMonth,
                list[len70+i].Season
                };
                outputsTest.SetValue(list[len70 + i].FutureUsage, i);
            }


            //use a codification filter to transform the symbolic variables into one-hot vectors
            var codebook = new Codification<object>()
            {
                { "usageOneMonthAgo", CodificationVariable.Continuous },
                { "usageTwoMonthAgo", CodificationVariable.Continuous },
                { "UsageOneYearAgo", CodificationVariable.Continuous },
                { "totalReqQty", CodificationVariable.Continuous },
                { "thisMonth", CodificationVariable.Categorical },
                { "season", CodificationVariable.Categorical },
            };
            // Learn the codebook
            codebook.Learn(instancesTrain);
            codebook.Learn(instancesTest);


            //use it to obtain double[] vectors:
            double[][] inputsTrain = codebook.ToDouble().Transform(instancesTrain);
            double[][] inputsTest = codebook.ToDouble().Transform(instancesTest);


            //use Ordinary Least Squares to create a linear regression model with an intercept term
            var ols = new OrdinaryLeastSquares();
            {
                ols.UseIntercept = true;
                ols.IsRobust = true;
            };

            //use Ordinary Least Squares to estimate a regression model:
            MultipleLinearRegression regression = ols.Learn(inputsTrain, outputsTrain);

            //compute the predicted points using:
            double[] predicted = regression.Transform(inputsTest);

            //The squared error using the SquareLoss class:
            double error = new SquareLoss(outputsTest).Loss(predicted);
            Console.WriteLine($"Mean squared error on testing set: {error}");

            return predicted;
        }


        public static List<Prediction> Shuffle<Prediction>(List<Prediction> list) //עירבוב איברים עבור רנדומליות 
        {
            Random random = new Random();
            List<Prediction> shuffledList = new List<Prediction>(list);

            int n = shuffledList.Count;
            while (n > 1)
            {
                n--;
                int k = random.Next(n + 1);
                Prediction value = shuffledList[k];
                shuffledList[k] = shuffledList[n];
                shuffledList[n] = value;
            }
            return shuffledList;
        }

        //public static void minmax(List<Prediction> list, ref double minReq, ref double minOneMonth, ref double minTwoMonth, ref double minOneYear, ref double maxReq, ref double maxOneMonth, ref double maxTwoMonth, ref double maxOneYear) //מציאת minmax 
        //{
        //    //min-max normalization
        //    // Find the minimum and maximum values of totalReqQty
        //    double minTotalReqQty = 1000;
        //    double minUsageOneMonthAgo = 1000; 
        //    double minUsageTwoMonthAgo = 10000; 
        //    double minUsageOneYearAgo = 10000; 
        //    double maxTotalReqQty = 0;
        //    double maxUsageOneMonthAgo = 0;
        //    double maxUsageTwoMonthAgo = 0;
        //    double maxUsageOneYearAgo = 0;


        //    foreach (Prediction p in list)
        //    {
        //        if (p.UsageOneMonthAgo < minUsageOneMonthAgo) minUsageOneMonthAgo = p.UsageOneMonthAgo;
        //        if (p.UsageOneMonthAgo > maxUsageOneMonthAgo) maxUsageOneMonthAgo = p.UsageOneMonthAgo;
        //        if (p.UsageTwoMonthAgo < minUsageTwoMonthAgo) minUsageTwoMonthAgo = p.UsageTwoMonthAgo;
        //        if (p.UsageTwoMonthAgo > maxUsageTwoMonthAgo) maxUsageTwoMonthAgo = p.UsageTwoMonthAgo;
        //        if (p.UsageOneYearAgo < minUsageOneYearAgo) minUsageOneYearAgo = p.UsageOneYearAgo;
        //        if (p.UsageOneYearAgo > maxUsageOneYearAgo) maxUsageOneYearAgo = p.UsageOneYearAgo;
        //        if (p.TotalReqQty < minTotalReqQty) minTotalReqQty = p.TotalReqQty;
        //        if (p.TotalReqQty > maxTotalReqQty) maxTotalReqQty = p.TotalReqQty;
        //    }


        //    minReq = minTotalReqQty;
        //    minOneMonth = minUsageOneMonthAgo;
        //    minTwoMonth = minUsageTwoMonthAgo;
        //    minOneYear = minUsageOneYearAgo;
        //    maxReq = maxTotalReqQty;
        //    maxOneMonth = maxUsageOneMonthAgo;
        //    maxTwoMonth = maxUsageTwoMonthAgo;
        //    maxOneYear = maxUsageOneYearAgo;
        //}
    }
}
