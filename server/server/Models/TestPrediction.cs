using Accord.Math.Optimization.Losses;
using Accord.Statistics.Filters;
using Accord.Statistics.Models.Regression.Linear;

namespace server.Models
{
    public class TestPrediction
    {
        static void Main(string[] args)
        {
            // Let's say we would like predict a continuous number from a set 
            // of discrete and continuous input variables. For this, we will 
            // be using the Servo dataset from UCI's Machine Learning repository 
            // as an example: http://archive.ics.uci.edu/ml/datasets/Servo

            // Create a Servo dataset
            Servo servo = new Servo();
            object[][] instances = servo.Instances; // 167 x 4 
            double[] outputs = servo.Output;        // 167 x 1

            // This dataset contains 4 columns, where the first two are 
            // symbolic (having possible values A, B, C, D, E), and the
            // last two are continuous.

            // We will use a codification filter to transform the symbolic 
            // variables into one-hot vectors, while keeping the other two
            // continuous variables intact:
            var codebook = new Codification<object>()
            {
                { "motor", CodificationVariable.Categorical },
                { "screw", CodificationVariable.Categorical },
                { "pgain", CodificationVariable.Continuous },
                { "vgain", CodificationVariable.Continuous },
            };

            // Learn the codebook
            codebook.Learn(instances);

            // We can gather some info about the problem:
            //int numberOfInputs = codebook.NumberOfInputs;   // should be 4 (since there are 4 variables)
            //int numberOfOutputs = codebook.NumberOfOutputs; // should be 12 (due their one-hot encodings)

            // Now we can use it to obtain double[] vectors:
            double[][] inputs = codebook.ToDouble().Transform(instances);

            // We will use Ordinary Least Squares to create a
            // linear regression model with an intercept term
            var ols = new OrdinaryLeastSquares()
            {
                UseIntercept = true
            };

            // Use Ordinary Least Squares to estimate a regression model:
            MultipleLinearRegression regression = ols.Learn(inputs, outputs);

            //ליצור מופע יחיד

            // We can compute the predicted points using:
            double[] predicted = regression.Transform(inputs);

            // And the squared error using the SquareLoss class:
            double error = new SquareLoss(outputs).Loss(predicted);
            Console.WriteLine($"Mean squared error on testing set: {error}");
        }

    }
}