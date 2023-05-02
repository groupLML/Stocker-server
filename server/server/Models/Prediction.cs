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
        public double[] GetPrediction(int month, int dep, int med)
        {
            //Create a dataset
            DBservices dbs = new DBservices();
            List<Prediction> list = dbs.ReadPrediction(month, dep, med);

            int len70 = (int)(list.Count * 70 / 100);//הגדרת כמות המייצגת את ה-70% מהדאטה כולו

            //shuffled
            list = Shuffle(list);

            //Normalization
            double minReq = 10000;
            double minOneMonth = 10000;
            double minTwoMonth = 10000;
            double minOneYear = 10000;
            double maxReq = 0;
            double maxOneMonth = 0;
            double maxTwoMonth = 0;
            double maxOneYear = 0;

            //מציאת מינימום מקסימום עבור כל פיצ'ר
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

            //הגדרת מטריצת פיצרים מבחן ואימון
            object[][] instancesTrain = new object[len70][];
            object[][] instancesTest = new object[list.Count - len70][];
            //הגדרת ווקטור תוצאות מבחן ואימון
            double[] outputsTrain = new double[len70];
            double[] outputsTest = new double[list.Count-len70];

            //Split data into training and testing sets and normalization
            for (int i = 0; i < len70; i++) 
            {
                instancesTrain[i] = new object[]
                {
                (list[i].UsageOneMonthAgo - minOneMonth) / (maxOneMonth - minOneMonth),
                (list[i].UsageTwoMonthAgo - minTwoMonth) / (maxTwoMonth - minTwoMonth),
                (list[i].UsageOneYearAgo - minOneYear) / (maxOneYear - minOneYear),
                (list[i].TotalReqQty - minReq) / (maxReq - minReq) // normalize the totalReqQty column
                //list[i].ThisMonth,
                //list[i].Season
                };
                outputsTrain.SetValue(list[i].FutureUsage, i);
            }


            for (int i = 0; i < list.Count - len70; i++) 
            {
                instancesTest[i] = new object[]
                {
                (list[len70+i].UsageOneMonthAgo - minOneMonth) / (maxOneMonth - minOneMonth),
                (list[len70+i].UsageTwoMonthAgo - minTwoMonth) / (maxTwoMonth - minTwoMonth),
                (list[len70 + i].UsageOneYearAgo - minOneYear) / (maxOneYear - minOneMonth),
                (list[len70+i].TotalReqQty - minReq) / (maxReq - minReq) // normalize the totalReqQty column
                //list[len70+i].ThisMonth,
                //list[len70+i].Season
                };
                outputsTest.SetValue(list[len70 + i].FutureUsage, i);
            }


            //use a codification filter to transform the symbolic variables into one-hot vectors (encoding)
            var codebook = new Codification<object>()
            {
                { "usageOneMonthAgo", CodificationVariable.Continuous },
                { "usageTwoMonthAgo", CodificationVariable.Continuous },
                { "UsageOneYearAgo", CodificationVariable.Continuous },
                { "totalReqQty", CodificationVariable.Continuous },
                //{ "thisMonth", CodificationVariable.Categorical },
                //{ "season", CodificationVariable.Categorical },
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

            //double a = regression.Weights[0]; // a = 0
            //double b = regression.Weights[1]; // b = 0
            //double c = regression.Weights[2];
            //double d = regression.Weights[3];
            //double e = regression.Weights[4];
            //double f = regression.Weights[5];
            //double g = regression.Weights[6];
            //double h = regression.Intercept;

            Console.WriteLine("cofficients");
            for (int i = 0; i < 4; i++)
            {
                Console.WriteLine(regression.Weights[i]);
            }
            Console.WriteLine("intercept:");
            Console.WriteLine(regression.Intercept);


            //compute the predicted points using:
            double[] predicted = regression.Transform(inputsTest);

            //The squared error using the SquareLoss class:
            double error = new SquareLoss(outputsTest).Loss(predicted);
            Console.WriteLine($"Mean squared error on testing set: {error}");

            return predicted;
            //return (int)AVG(predicted);
        }


        public static List<Prediction> Shuffle<Prediction>(List<Prediction> list) //עירבוב רשומות עבור רנדומליות 
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

        //public static double AVG(double[] predicted) //avarage of predicted vector
        //{
        //    double sum = 0.0;
        //    foreach (double num in predicted)
        //    {
        //        sum += num;
        //    }
        //    return sum / predicted.Length;
        //}


    }
}
