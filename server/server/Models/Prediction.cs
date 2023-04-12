using Accord.Math;
using Accord.Math.Optimization.Losses;
using Accord.Statistics.Filters;
using Accord.Statistics.Models.Regression.Linear;
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

            //Split data into training and testing sets
            object[][] instancesTrain = new object[len70][];
            object[][] instancesTest = new object[list.Count-len70][];
            double[] outputsTrain = new double[len70];
            double[] outputsTest = new double[list.Count-len70];


            for (int i = 0; i < len70; i++) //0-69
            {
                instancesTrain[i] = new object[]
                {
                list[i].UsageOneMonthAgo,
                list[i].UsageTwoMonthAgo,
                list[i].UsageOneYearAgo,
                list[i].TotalReqQty,
                list[i].ThisMonth,
                list[i].Season
                };
                outputsTrain.SetValue(list[i].FutureUsage, i); 
            }

            for (int i = 0; i < list.Count - len70; i++) //70-99
            {
                instancesTest[i] = new object[]
                {
                list[len70+i].UsageOneMonthAgo,
                list[len70+i].UsageTwoMonthAgo,
                list[len70+i].UsageOneYearAgo,
                list[len70+i].TotalReqQty,
                list[len70+i].ThisMonth,
                list[len70+i].Season
                };
                outputsTest.SetValue(list[len70 + i].FutureUsage, i);
            }

            //Normalization
            //var normalization = new Normalization();

            ////Learn the normalization from the training set
            //var normInstancesTrain = normalization.Learn(instancesTrain);
            //var normInstancesTest = normalization.Learn(instancesTest);


            ////Normalize 
            //double[][] inputsTrain = normInstancesTrain.Transform(instancesTrain);
            //double[][] inputsTest = normInstancesTrain.Transform(instancesTest);


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
            var ols = new OrdinaryLeastSquares()
            {
                UseIntercept = true
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


    }
}
