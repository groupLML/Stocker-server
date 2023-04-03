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
            double[] inputs = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
            //{
            //    new double[] { 1 }, // January
            //    new double[] { 2 }, // February
            //    new double[] { 3 }, // March
            //    new double[] { 4 }, // April
            //    new double[] { 5 }, // May
            //    new double[] { 6 }, // June
            //    new double[] { 7 }, // July
            //    new double[] { 8 }, // August
            //    new double[] { 9 }, // September
            //    new double[] { 10 }, // October
            //    new double[] { 11 }, // November
            //    new double[] { 12 } // December
            //};

            double[] outputs =
            {
                100, // Consumption for January
                110, // Consumption for February
                111, // Consumption for March
                121, // Consumption for April
                93, // Consumption for May
                87, // Consumption for June
                132, // Consumption for July
                102, // Consumption for August
                96, // Consumption for September
                200, // Consumption for October
                101, // Consumption for November
                110  // Consumption for December
            };

            // Split data into training and testing sets
            double[] inputsTrain = new double[9];
            double[] inputsTest = new double[3];
            double[] outputsTrain = new double[9];
            double[] outputsTest = new double[3];

            for (int i = 0; i < inputsTrain.Length; i++)
            {
                inputsTrain[i] = inputs[i];
                outputsTrain[i] = outputs[i];
            }

            for (int i = 0; i < inputsTest.Length; i++)
            {
                inputsTest[i] = inputs[i + 9];
                outputsTest[i] = outputs[i + 9];
            }

            // Train linear regression model
            var regression = new OrdinaryLeastSquares()
            {
                UseIntercept = true
            };
            SimpleLinearRegression model = regression.Learn(inputsTrain, outputsTrain);

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
            double[] testPredictions = model.Transform(inputsTest);
            var mse = new SquareLoss(outputsTest);
            double testError = mse.Loss(testPredictions);
            Console.WriteLine($"Mean squared error on testing set: {testError}");

            // Use model to make predictions for future months
            double[] futureInputs = new double[12];
            for (int i = 0; i < futureInputs.Length; i++)
            {
                futureInputs[i] = i + 13;
            }
            double[] futurePredictions = model.Transform(futureInputs);

            // Print predicted consumption values for future months
            for (int i = 0; i < futurePredictions.Length; i++)
            {
                Console.WriteLine($"Month {i+13}: {futurePredictions[i]}");
            }
        }
    }
}

