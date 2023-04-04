using System;
using Accord.Statistics.Models.Regression.Linear;
using Accord.Math.Optimization.Losses;
using Accord.Statistics.Models.Regression;

namespace server.Models
{
    public class ConsumptionPrediction
    {
        static public void Main()
        {
            // Load consumption data
            double[][] inputs =
            {
                new double[] { 1,2,3,4,5,6,7,8,9,10,11,12 }, // 2020 train
                new double[] { 1,2,3,4,5,6,7,8,9,10,11,12 }, // 2021 train
                new double[] { 1,2,3,4,5,6,7,8,9,10,11,12 }, // 2022 test
            };

            double[][] outputs =
            {
                new double[] { 103, 111, 110, 120, 93, 87, 132, 102, 99, 207, 101, 110 }, // 2020 train
                new double[] { 101, 110, 140, 124, 91, 87, 135, 170, 96, 202, 101, 105 }, // 2021 train
                new double[] { 105, 109, 111, 122, 93, 88, 132, 102, 91, 200, 111, 110 }, // 2022 test
            };

            // Split data into training and testing sets
            double[][] inputsTrain = new double[2][];
            double[][] inputsTest = new double[1][];
            double[][] outputsTrain = new double[2][];
            double[][] outputsTest = new double[1][];

            for (int i = 0; i < inputsTrain.Length; i++)
            {
                inputsTrain[i] = inputs[i];
                outputsTrain[i] = outputs[i];
            }

            for (int i = 0; i < inputsTest.Length; i++)
            {
                inputsTest[i] = inputs[i + 2];
                outputsTest[i] = outputs[i + 2];
            }

            // Train linear regression model
            var regression = new OrdinaryLeastSquares()
            {
                UseIntercept = true
            };
            MultivariateLinearRegression model = regression.Learn(inputsTrain, outputsTrain);

            // Predict consumption values for each month
            double[] inputsAll = new double[12];
            for (int i = 0; i < inputsAll.Length; i++)
            {
                inputsAll[i] = i + 1;
            }
            double[] predictions = model.Transform(inputsAll);

            // Print predicted consumption values
            for (int i = 0; i < predictions.Length; i++)
            {
                Console.WriteLine($"Month {i+1}: {predictions[i]}");
            }

            // Evaluate performance on testing set
            double[][] testPredictions = model.Transform(inputsTest);
            var mse = new SquareLoss(outputsTest);
            double testError = mse.Loss(testPredictions);
            Console.WriteLine($"Mean squared error on testing set: {testError}");

        }
    }
}