using Accord.Math;
using Accord.Math.Optimization.Losses;
using Accord.Statistics.Analysis;
using Accord.Statistics.Filters;
using Accord.Statistics.Kernels;
using Accord.Statistics.Models.Regression.Linear;
using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Runtime.Intrinsics.Arm;
using System.Runtime.Intrinsics.X86;


namespace server.Models
{
    public class NormPredictions
    {
        double usageOneMonthAgo;
        double usageOneYearAgo;
        string season;
        double futureUsage;

        public double UsageOneMonthAgo { get => usageOneMonthAgo; set => usageOneMonthAgo = value; }
        public double UsageOneYearAgo { get => usageOneYearAgo; set => usageOneYearAgo = value; }
        public string Season { get => season; set => season = value; }
        public double FutureUsage { get => futureUsage; set => futureUsage = value; }

        public NormPredictions() { }
        public NormPredictions(double usageOneMonthAgo, double usageOneYearAgo, string season, double futureUsage)
        {
            this.UsageOneMonthAgo = usageOneMonthAgo;
            this.UsageOneYearAgo = usageOneYearAgo;
            this.Season = season;
            this.FutureUsage = futureUsage;
        }

        public double MedNormPrediction(int dep, int med)
        {
            //Create a dataset
            DBservices dbs = new DBservices();
            List<NormPredictions> list = dbs.ReadNormPrediction(dep, med);

            int len70 = (int)(list.Count * 70 / 100);//הגדרת כמות המייצגת את ה-70% מהדאטה כולו

            //shuffled
            list = Shuffle(list);

            //Normalization
            double minOneMonth = 10000;
            double minOneYear = 10000;
            double maxOneMonth = 0;
            double maxOneYear = 0;

            //מציאת מינימום מקסימום עבור כל פיצ'ר
            foreach (NormPredictions p in list)
            {
                if (p.UsageOneMonthAgo < minOneMonth) minOneMonth = p.UsageOneMonthAgo;
                if (p.UsageOneMonthAgo > maxOneMonth) maxOneMonth = p.UsageOneMonthAgo;
                if (p.UsageOneYearAgo < minOneYear) minOneYear = p.UsageOneYearAgo;
                if (p.UsageOneYearAgo > maxOneYear) maxOneYear = p.UsageOneYearAgo;
            }

            //הגדרת מטריצת פיצרים מבחן ואימון
            object[][] instancesTrain = new object[len70][];
            object[][] instancesTest = new object[list.Count - len70][];
            //הגדרת ווקטור תוצאות מבחן ואימון
            double[] outputsTrain = new double[len70];
            double[] outputsTest = new double[list.Count - len70];

            //Split data into training and testing sets and normalization
            for (int i = 0; i < len70; i++)
            {
                instancesTrain[i] = new object[]
                {
                (list[i].UsageOneMonthAgo - minOneMonth) / (maxOneMonth - minOneMonth),
                (list[i].UsageOneYearAgo - minOneYear) / (maxOneYear - minOneYear),
                list[i].Season
                };
                outputsTrain.SetValue(list[i].FutureUsage, i);
            }


            for (int i = 0; i < list.Count - len70; i++)
            {
                instancesTest[i] = new object[]
                {
                (list[len70+i].UsageOneMonthAgo - minOneMonth) / (maxOneMonth - minOneMonth),
                (list[len70 + i].UsageOneYearAgo - minOneYear) / (maxOneYear - minOneMonth),
                list[len70+i].Season
                };
                outputsTest.SetValue(list[len70 + i].FutureUsage, i);
            }


            //use a codification filter to transform the symbolic variables into one-hot vectors (encoding)
            var codebook = new Codification<object>()
            {
                { "usageOneMonthAgo", CodificationVariable.Continuous },
                { "UsageOneYearAgo", CodificationVariable.Continuous },
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


            //coefficients
            double a = regression.Weights[0];
            double b = regression.Weights[1];
            double c1 = regression.Weights[2];
            double c2 = regression.Weights[3];
            double c3 = regression.Weights[4];
            double c4 = regression.Weights[5];
            double n = regression.Intercept;


            //season variable
            int x3 = 0, x4 = 0, x5 = 0, x6 = 0;
            int month = DateTime.Now.Month;
            if (month == 12 || month == 1 || month == 2) //חורף
                x3 = 1;
            if (month == 3 || month == 4 || month == 5) //אביב
                x4 = 1;
            if (month == 6 || month == 7 || month == 8) //קיץ
                x5 = 1;
            if (month == 9 || month == 10 || month == 11) //סתיו
                x6 = 1;


            //numeric variable
            Object obj = dbs.ReadX1X2(dep, med);
            double x1 = (double)obj.GetType().GetProperty("x1").GetValue(obj, null);
            double x2 = (double)obj.GetType().GetProperty("x2").GetValue(obj, null);

            x1 = (x1 - minOneMonth) / (maxOneMonth - minOneMonth);
            x2 = (x2 - minOneYear) / (maxOneYear - minOneYear);

            //linear equation
            double y = a * x1 + b * x2 + c1 * x3 + c2 * x4 + c3 * x5 + c4 * x6 + n;

            Console.WriteLine("medId: " + med);
            Console.WriteLine("cofficients");
            for (int i = 0; i < 6; i++)
            {
                Console.WriteLine(regression.Weights[i]);
            }
            Console.WriteLine("intercept:");
            Console.WriteLine(regression.Intercept);
            Console.WriteLine("y: " + y + " x1: " + x1 + " x2: " + x2);

            return y;
        }


        public static List<NormPredictions> Shuffle<NormPredictions>(List<NormPredictions> list) //עירבוב רשומות עבור רנדומליות 
        {
            Random random = new Random();
            List<NormPredictions> shuffledList = new List<NormPredictions>(list);

            int n = shuffledList.Count;
            while (n > 1)
            {
                n--;
                int k = random.Next(n + 1);
                NormPredictions value = shuffledList[k];
                shuffledList[k] = shuffledList[n];
                shuffledList[n] = value;
            }
            return shuffledList;
        }

    }
}
