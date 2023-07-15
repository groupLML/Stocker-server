using Microsoft.AspNetCore.Mvc;
//using OfficeOpenXml;
using System.Data;
using System.Data.SqlClient;


// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ExeclController : ControllerBase
    {

        //// POST api/<ExeclController>
        //[HttpPost]
        //public void UploadExcelFile(IFormFile file, int type)
        //{
        //    // Set the license context for EPPlus
        //    ExcelPackage.LicenseContext = LicenseContext.NonCommercial;

        //    // Parse the Excel file
        //    var dataTable = ParseExcelFile(file);

        //    // Insert the data into the database

        //    if(type== 1) 
        //      InsertPushOrderIntoDB(dataTable);
        //    else
        //      InsertUsageIntoDB(dataTable);
        //}


        //private DataTable ParseExcelFile(IFormFile file)
        //{
        //    var dataTable = new DataTable();

        //    using (var package = new ExcelPackage(file.OpenReadStream()))
        //    {
        //        var worksheet = package.Workbook.Worksheets[0];
        //        var cellCount = worksheet.Dimension.End.Column;
        //        var rowCount = worksheet.Dimension.End.Row;

        //        // Set up the columns in the data table
        //        for (var cell = 1; cell <= cellCount; cell++)
        //        {
        //            dataTable.Columns.Add(worksheet.Cells[1, cell].Value.ToString());
        //        }

        //        // Add the rows to the data table
        //        for (var row = 2; row <= rowCount; row++)
        //        {
        //            var dataRow = dataTable.NewRow();
        //            for (var cell = 1; cell <= cellCount; cell++)
        //            {
        //                dataRow[cell - 1] = worksheet.Cells[row, cell].Value;
        //            }
        //            dataTable.Rows.Add(dataRow);
        //        }
        //    }
        //    return dataTable;
        //}

        //private void InsertPushOrderIntoDB(DataTable dataTable)
        //{
        //    // Connect to the database
        //    var connectionString = "Data Source=Media.ruppin.ac.il;Initial Catalog=igroup127_prod; User ID=igroup127; Password=igroup127_29833";
        //    using (var connection = new SqlConnection(connectionString))
        //    {
        //        connection.Open();

        //        using (var command = new SqlCommand(("spInsertPushOrder", connection)) 
        //        {
        //            command.CommandType = CommandType.StoredProcedure;
        //            orderId = Convert.ToInt32(command.ExecuteScalar()); //הרצת command
        //        }


        //        using (var command = new SqlCommand("spInsertPushMedOrders", connection))
        //        {
        //            command.CommandType = CommandType.StoredProcedure;

        //            foreach (DataRow row in dataTable.Rows)
        //            {
        //                command.Parameters.Clear();

        //                command.Parameters.AddWithValue("@orderId", orderId);
        //                command.Parameters.AddWithValue("@medId", 0);
        //                command.Parameters.AddWithValue("@poQty", SqlDbType.Int) = row["poQty"];
        //                command.Parameters.AddWithValue("@supQty", SqlDbType.Int) = row["supQty"];
        //                command.Parameters.AddWithValue("@mazNum", SqlDbType.VarChar).Value = row["mazNum"];

        //                command.ExecuteNonQuery();
        //            }
        //        }
        //    }
        //}


    }
}
