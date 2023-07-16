using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Xml.Linq;
using server.Models;
using Swashbuckle.AspNetCore;
using System.Reflection.PortableExecutable;
using System.Runtime.ConstrainedExecution;
using System.Collections;
using System.Runtime.Intrinsics.Arm;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using MathNet.Numerics;
using System.Diagnostics.Metrics;
using Accord.IO;
using System.Collections.Concurrent;

/// DBServices is a class created by me to provides some DataBase Services
public class DBservices
{
    public SqlDataAdapter da;
    public DataTable dt;

    public DBservices() { }

    /*****************Global*****************/

    //--------------------------------------------------------------------------------------------------
    // This method creates a connection to the database according to the connectionString name in the web.config 
    //--------------------------------------------------------------------------------------------------
    public SqlConnection connect(String conString)
    {

        // read the connection string from the configuration file
        IConfigurationRoot configuration = new ConfigurationBuilder()
        .AddJsonFile("appsettings.json").Build();
        string cStr = configuration.GetConnectionString("myProjDB");
        SqlConnection con = new SqlConnection(cStr);
        con.Open();
        return con;
    }

    //---------------------------------------------------------------------------------
    // Create the global Read SqlCommand 
    //---------------------------------------------------------------------------------
    private SqlCommand CreateReadCommandSP(String spName, SqlConnection con)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 60;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        return cmd;
    }

    //---------------------------------------------------------------------------------
    // Create the global Read Object SqlCommand 
    //---------------------------------------------------------------------------------
    private SqlCommand CreateReadDepObjectCommandSP(String spName, SqlConnection con, int depId)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 100;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@depId", depId);

        return cmd;
    }



    /*****************Medicines*****************/

    //--------------------------------------------------------------------------------------------------
    // This method inserts a medicine to the medicines table 
    //--------------------------------------------------------------------------------------------------
    public int InsertMed(Medicine medicine)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateInsertMedCommandSP("spInsertMedicine", con, medicine);    // create the command

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a medicine in the medicines table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateMed(Medicine medicine)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateInsertMedCommandSP("spUpdateMedicine", con, medicine);

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the Update SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertMedCommandSP(String spName, SqlConnection con, Medicine medicine)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@medId", medicine.MedId);
        cmd.Parameters.AddWithValue("@genName", medicine.GenName);
        cmd.Parameters.AddWithValue("@comName", medicine.ComName);
        cmd.Parameters.AddWithValue("@mazNum", medicine.MazNum);
        cmd.Parameters.AddWithValue("@eaQty", medicine.EaQty);
        cmd.Parameters.AddWithValue("@unit", medicine.Unit);
        cmd.Parameters.AddWithValue("@method", medicine.Method);
        cmd.Parameters.AddWithValue("@given", medicine.Given);
        cmd.Parameters.AddWithValue("@medStatus", medicine.MedStatus);
        cmd.Parameters.AddWithValue("@lastUpdate", medicine.LastUpdate);

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read medicine from the  medicines table
    //--------------------------------------------------------------------------------------------------
    public List<Medicine> ReadMeds()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadMedicines", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Medicine> list = new List<Medicine>();

            while (dataReader.Read())
            {
                Medicine medicine = new Medicine();
                medicine.MedId = Convert.ToInt32(dataReader["MedId"]);
                medicine.GenName = dataReader["GenName"].ToString();
                medicine.ComName = dataReader["ComName"].ToString();
                medicine.MazNum = dataReader["MazNum"].ToString();
                medicine.EaQty = Convert.ToInt32(dataReader["EaQty"]);
                medicine.Unit = dataReader["Unit"].ToString();
                medicine.Method = dataReader["Method"].ToString();
                medicine.Given = dataReader["Given"].ToString();
                medicine.MedStatus = Convert.ToBoolean(dataReader["MedStatus"]);
                medicine.LastUpdate = Convert.ToDateTime(dataReader["LastUpdate"]);
                list.Add(medicine);
            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read active medicine from the medicines table
    //--------------------------------------------------------------------------------------------------
    public Object ReadMedsFullNames()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadFullNameMedicines", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                var MedStatus = Convert.ToBoolean(dataReader["medStatus"]);
                if (MedStatus == true) //read only active medicines
                {
                    listObj.Add(new
                    {
                        medId = Convert.ToInt32(dataReader["medId"]),
                        medName = dataReader["medName"].ToString(),
                        mazNum = dataReader["mazNum"].ToString(),
                        medStatus = MedStatus,
                        lastUpdate = Convert.ToDateTime(dataReader["lastUpdate"]),
                    });
                }
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read medicine from the medicines table
    //-------------------------------------------------------------------------------------------------
    public Object ReadMedsAdmin()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadMedicinesAdmin", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                        medId = Convert.ToInt32(dataReader["medId"]),
                        genName = dataReader["genName"].ToString(),
                        comName = dataReader["comName"].ToString(),
                        fullName = dataReader["fullName"].ToString(),
                        mazNum = dataReader["mazNum"].ToString(),
                        eaQty = Convert.ToInt32(dataReader["eaQty"]),
                        unit = dataReader["unit"].ToString(),
                        method = dataReader["method"].ToString(),
                        given = dataReader["given"].ToString(),
                        status = Convert.ToBoolean(dataReader["medStatus"]),
                        lastUpdate = Convert.ToDateTime(dataReader["lastUpdate"])
                });
                
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }


    /*****************Users*****************/

    //--------------------------------------------------------------------------------------------------
    // This method inserts a user to the users table 
    //--------------------------------------------------------------------------------------------------
    public int InsertUser(User user)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateInsertUserCommandSP("spInsertUser", con, user);    // create the command

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a user in the users table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateUser(User user)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateInsertUserCommandSP("spUpdateUser", con, user);

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the Update/Insert SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertUserCommandSP(String spName, SqlConnection con, User user)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@userId", user.UserId);
        cmd.Parameters.AddWithValue("@username", user.Username);
        cmd.Parameters.AddWithValue("@firstName", user.FirstName);
        cmd.Parameters.AddWithValue("@lastName", user.LastName);
        cmd.Parameters.AddWithValue("@email", user.Email);
        cmd.Parameters.AddWithValue("@emailP", user.EmailP);
        cmd.Parameters.AddWithValue("@password", user.Password);
        cmd.Parameters.AddWithValue("@phone", user.Phone);
        cmd.Parameters.AddWithValue("@position", user.Position);
        cmd.Parameters.AddWithValue("@jobType", user.JobType);
        cmd.Parameters.AddWithValue("@depId", user.DepId);
        cmd.Parameters.AddWithValue("@isActive", user.IsActive);

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read users from the users table
    //--------------------------------------------------------------------------------------------------
    public List<User> ReadUsersList()
    {
        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadUsers", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<User> list = new List<User>();

            while (dataReader.Read())
            {
                User user = new User();
                user.UserId = Convert.ToInt32(dataReader["UserId"]);
                user.Username = dataReader["Username"].ToString();
                user.FirstName = dataReader["FirstName"].ToString();
                user.LastName = dataReader["LastName"].ToString();
                user.Email = dataReader["Email"].ToString();
                user.EmailP = dataReader["EmailP"].ToString();
                user.Password = dataReader["Password"].ToString();
                user.Phone = dataReader["Phone"].ToString();
                user.Position = dataReader["Position"].ToString();
                user.JobType = Convert.ToChar(dataReader["JobType"]);
                user.DepId = Convert.ToInt32(dataReader["DepId"]);
                user.IsActive = Convert.ToBoolean(dataReader["IsActive"]);
                list.Add(user);

            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read objectss from the users table
    //--------------------------------------------------------------------------------------------------
    public Object ReadUsersPharm()
    {
        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadUsersPharm", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<object> listObj = new List<object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                    userId = Convert.ToInt32(dataReader["UserId"]),
                    username = dataReader["Username"].ToString(),
                    firstName = dataReader["FirstName"].ToString(),
                    lastName = dataReader["LastName"].ToString(),
                    email = dataReader["Email"].ToString(),
                    emailP = dataReader["EmailP"].ToString(),
                    password = dataReader["Password"].ToString(),
                    phone = dataReader["Phone"].ToString(),
                    position = dataReader["Position"].ToString(),
                    jobType = Convert.ToChar(dataReader["JobType"]),
                    jobTypeName = dataReader["jobTypeName"].ToString(),
                    depId = Convert.ToInt32(dataReader["DepId"]),
                    depName = dataReader["depName"].ToString(),
                    isActive = Convert.ToBoolean(dataReader["IsActive"])
                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }




    /*****************Departments*****************/

    //--------------------------------------------------------------------------------------------------
    // This method inserts a department to the departments table 
    //--------------------------------------------------------------------------------------------------
    public int InsertDep(Department dep)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateInsertDepCommandSP("spInsertDepartment", con, dep);    // create the command

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a department in the departments table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateDep(Department dep)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateInsertDepCommandSP("spUpdateDepartment", con, dep);

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the Update/Insert SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertDepCommandSP(String spName, SqlConnection con, Department dep)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@depId", dep.DepId);
        cmd.Parameters.AddWithValue("@depName", dep.DepName);
        cmd.Parameters.AddWithValue("@depPhone", dep.DepPhone);
        cmd.Parameters.AddWithValue("@depType", dep.DepType);

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read departments from the departments table
    //--------------------------------------------------------------------------------------------------
    public List<Department> ReadDeps()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadDepartments", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Department> list = new List<Department>();

            while (dataReader.Read())
            {
                Department dep = new Department();
                dep.DepId = Convert.ToInt32(dataReader["DepId"]);
                dep.DepName = dataReader["DepName"].ToString();
                dep.DepPhone = dataReader["DepPhone"].ToString();
                dep.DepType = dataReader["DepType"].ToString();
                list.Add(dep);

            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }




    /*****************Messages*****************/

    //--------------------------------------------------------------------------------------------------
    // This method insert a Message to the Messages table 
    //--------------------------------------------------------------------------------------------------
    public int InsertMessage(Message msg)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateInsertMessageCommandSP("spInsertMessage", con, msg);    // create the command

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a Message in the Messages table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateMessage(Message msg)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateInsertMessageCommandSP("spUpdateMessage", con, msg);

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the Update/Insert SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertMessageCommandSP(String spName, SqlConnection con, Message msg)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@msgId", msg.MsgId);
        cmd.Parameters.AddWithValue("@userId", msg.UserId);
        cmd.Parameters.AddWithValue("@msg", msg.Msg);
        cmd.Parameters.AddWithValue("@msgDate", msg.MsgDate);

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read Messages from the Messages table
    //--------------------------------------------------------------------------------------------------
    public Object ReadMessages()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadMessages", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<object> listObj = new List<object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                    msgId = Convert.ToInt32(dataReader["MsgId"]),
                    pharmacistName = dataReader["pharmacistName"].ToString(),
                    msg = dataReader["msg"].ToString(),
                    msgDate = Convert.ToDateTime(dataReader["msgDate"])
                });

            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------
    // This method Delete Message by msgId
    //--------------------------------------------------------------------
    public int DeleteMessage(int msgId)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateDeleteMessageCommandSP("spDeleteMessage", con, msgId);

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------
    // Create the Delete Message SqlCommand
    //--------------------------------------------------------------------
    private SqlCommand CreateDeleteMessageCommandSP(String spName, SqlConnection con, int msgId)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command, can also be stored procedure

        cmd.Parameters.AddWithValue("@id", msgId);

        return cmd;
    }





    /*****************Usages*****************/

    //--------------------------------------------------------------------------------------------------
    // This method inserts a Usage to the Usages table 
    //--------------------------------------------------------------------------------------------------
    public bool InsertUsage(Usage use)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        SqlCommand cmd3;
        int usageId;
        int numEffected = 0;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction();

        try
        {
            using (cmd1 = CreateInsertUsageCommandSP("spInsertUsage", con, use))
            {
                cmd1.Transaction = transaction;
                usageId = Convert.ToInt32(cmd1.ExecuteScalar());
            }
            for (int i = 0; i < use.MedList.Count; i++)
            {
                numEffected = 0;
                using (cmd2 = CreateInsertMedUsageCommandSP("spInsertMedUsages", con, usageId, use.MedList[i]))
                {
                    cmd2.Transaction = transaction;
                    numEffected = cmd2.ExecuteNonQuery();
                }
                if (numEffected != 0)
                {
                    numEffected = -1;
                    using (cmd3 = CreateDeleteFromStockCommandSP("spDeleteFromStock", con, use.DepId, use.MedList[i].MedId, use.MedList[i].UseQty))
                    {
                        cmd2.Transaction = transaction;
                        numEffected = Convert.ToInt32(cmd3.ExecuteScalar());
                    }
                    if (numEffected == 0) //Not enough quantity in stock
                        break;
                }
                else
                    break;
            }

            if (numEffected == 1)// אם הכל הסתיים בהצלחה, נעשה commit
            {
                transaction.Commit();
                return true;
            }
            else //אם לא כל השינויים הנדרשים נשמרו במסד הנתונים, נעשה rollback 
            {
                transaction.Rollback();
                return false;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:" + sqlEx.Message);
            return false;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the Update/Insert SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateInsertUsageCommandSP(String spName, SqlConnection con, Usage use)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@usageId", use.UsageId);
        cmd.Parameters.AddWithValue("@depId", use.DepId);
        cmd.Parameters.AddWithValue("@reportNum", use.ReportNum);
        cmd.Parameters.AddWithValue("@lastUpdate", use.LastUpdate);

        return cmd;
    }

    //---------------------------------------------------------------------------------
    // Create the Insert SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateInsertMedUsageCommandSP(String spName, SqlConnection con, int usageId, MedUsage medList)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 20;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@medId", 0);
        cmd.Parameters.AddWithValue("@usageId", usageId);
        cmd.Parameters.AddWithValue("@useQty", medList.UseQty);
        cmd.Parameters.AddWithValue("@chamNum", medList.ChamNum);

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read Usages from the Usages table
    //--------------------------------------------------------------------------------------------------
    public List<Usage> ReadUsages()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadUsages", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Usage> list = new List<Usage>();
            int lastUsageId = 0;

            while (dataReader.Read())
            {
                Usage use = new Usage();
                use.UsageId = Convert.ToInt32(dataReader["UsageId"]);
                use.DepId = Convert.ToInt32(dataReader["DepId"]);
                use.ReportNum = dataReader["ReportNum"].ToString();
                use.LastUpdate = Convert.ToDateTime(dataReader["LastUpdate"]);
                if (use.MedList == null)
                    use.MedList = new List<MedUsage>();

                if (use.UsageId == lastUsageId)
                {
                    if (dataReader["MU.usageId"] != DBNull.Value)
                    {
                        MedUsage mu = new MedUsage();
                        mu.MedId = Convert.ToInt32(dataReader["MedId"]);
                        mu.UseQty = (float)(dataReader["UseQty"]);
                        mu.ChamNum = (dataReader["ChamNum"]).ToString();
                        list[list.Count - 1].MedList.Add(mu);
                    }
                }
                else
                {
                    if (dataReader["MU.usageId"] != DBNull.Value)
                    {
                        MedUsage mu = new MedUsage();
                        mu.MedId = Convert.ToInt32(dataReader["MedId"]);
                        mu.UseQty = (float)(dataReader["UseQty"]);
                        mu.ChamNum = (dataReader["ChamNum"]).ToString();
                        use.MedList.Add(mu);
                    }
                    list.Add(use);
                    lastUsageId = use.UsageId;
                }
            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read DepMedUsages from the MedUsages table by depId
    //--------------------------------------------------------------------------------------------------
    public Object ReadDepMedsUsage(int depId, DateTime startDate, DateTime endDate)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadUsageObjectCommandSP("spReadDepMedUsagesManager", con, depId, startDate, endDate);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {

                listObj.Add(new
                {
                    medId = Convert.ToInt32(dataReader["medId"]),
                    mazNum = dataReader["mazNum"].ToString(),
                    medName = dataReader["medName"].ToString(),
                    useQty = Convert.ToInt32(dataReader["useQty"])
                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create Read Object SqlCommand 
    //---------------------------------------------------------------------------------
    private SqlCommand CreateReadUsageObjectCommandSP(String spName, SqlConnection con, int depId, DateTime startDate, DateTime endDate)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@depId", depId);
        cmd.Parameters.AddWithValue("@startDate", startDate);
        cmd.Parameters.AddWithValue("@endDate", endDate);

        return cmd;
    }



    /*****************Stocks*****************/

    //--------------------------------------------------------------------------------------------------
    // This method insert a med to the Stocks table 
    //--------------------------------------------------------------------------------------------------
    public int InsertToStock(Stock stock)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateInsertStockCommandSP("spInsertIntoStock", con, stock);    // create the command

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a Stock in the Stocks table 
    //--------------------------------------------------------------------------------------------------
    public bool UpdateStock(Stock stock)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateInsertStockCommandSP("spUpdateStock", con, stock);

        try
        {
            cmd.ExecuteNonQuery(); // execute the command
            return true;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a Med Qty in the Stock table 
    //--------------------------------------------------------------------------------------------------
    public bool UpdateNurseStock(List<Stock> stockList)
    {
        SqlConnection con;
        SqlCommand cmd;
        int numEffected = 0;
        int stockListCount = stockList.Count;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction();

        try
        {
            for (int i = 0; i < stockList.Count; i++)
            {
                using (cmd = CreateUpdateInsertStockCommandSP("spUpdateStockNurse", con, stockList[i]))
                {
                    cmd.Transaction = transaction;
                    numEffected += Convert.ToInt32(cmd.ExecuteScalar());
                }
            }

            if (stockListCount == numEffected)// אם הכל הסתיים בהצלחה, נעשה commit
            {
                transaction.Commit();
                return true;
            }
            else //אם לא כל התרופות התעדכנו במסד הנתונים, נעשה rollback 
            {
                transaction.Rollback();
                return false;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:" + sqlEx.Message);
            return false;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the Update/Insert SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertStockCommandSP(String spName, SqlConnection con, Stock stock)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@stcId", stock.StcId);
        cmd.Parameters.AddWithValue("@medId", stock.MedId);
        cmd.Parameters.AddWithValue("@depId", stock.DepId);
        cmd.Parameters.AddWithValue("@stcQty", stock.StcQty);
        cmd.Parameters.AddWithValue("@entryDate", stock.EntryDate);

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read All Stocks from the Stocks table
    //--------------------------------------------------------------------------------------------------
    public Object ReadStocks()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadStocks", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {

                listObj.Add(new
                {
                    depId = Convert.ToInt32(dataReader["depId"]),
                    depName = dataReader["depName"].ToString(),
                    medId = Convert.ToInt32(dataReader["medId"]),
                    medName = dataReader["medName"].ToString(),
                    stcQty = Convert.ToInt32(dataReader["stcQty"])

                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read Dep's Stocks from the Stocks table by depId
    //--------------------------------------------------------------------------------------------------
    public Object ReadDepStock(int depId)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadDepObjectCommandSP("spReadDepStocks", con, depId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {

                listObj.Add(new
                {
                    medId = Convert.ToInt32(dataReader["medId"]),
                    medName = dataReader["medName"].ToString(),
                    stcQty = Convert.ToInt32(dataReader["stcQty"])

                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------
    // Create the DeleteStock SqlCommand
    //--------------------------------------------------------------------
    private SqlCommand CreateDeleteFromStockCommandSP(String spName, SqlConnection con, int depId, int medId, float qty)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command, can also be stored procedure

        cmd.Parameters.AddWithValue("@depId", depId);
        cmd.Parameters.AddWithValue("@medId", medId);
        cmd.Parameters.AddWithValue("@qty", qty);

        return cmd;
    }




    /*****************MedRequests*****************/

    //--------------------------------------------------------------------------------------------------
    // This method insert a MedRequest to the MedRequests table 
    //--------------------------------------------------------------------------------------------------
    public int InsertMedRequest(MedRequest mr, List<int> depList)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        int reqId;
        int numEffected = 0;
        int MedListCount = depList.Count;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction();

        try
        {
            using (cmd1 = CreateUpdateInsertMedRequestCommandSP("spInsertMedRequest", con, mr))
            {
                cmd1.Transaction = transaction;
                reqId = Convert.ToInt32(cmd1.ExecuteScalar());
            }
            for (int i = 0; i < depList.Count; i++)
            {
                using (cmd2 = CreateUpdateInsertDepRequestCommandSP("spInsertDepRequest", con, reqId, depList[i]))
                {
                    cmd2.Transaction = transaction;
                    numEffected += cmd2.ExecuteNonQuery();
                }
            }

            if (MedListCount == numEffected)// אם הכל הסתיים בהצלחה, נעשה commit
            {
                transaction.Commit();
                return 1;
            }
            else //אם לא כל התרופות בהזמנה נשמרו במסד הנתונים, נעשה rollback 
            {
                transaction.Rollback();
                return 0;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:" + sqlEx.Message);
            return 0;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a MedRequest in the MedRequests table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateMedRequestWaiting(MedRequest mr, List<int> depList)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        SqlCommand cmd3;
        int numEffected = 0;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction();

        try
        {
            using (cmd1 = CreateUpdateInsertMedRequestCommandSP("spUpdateMedRequestWaiting", con, mr))
            {
                cmd1.Transaction = transaction;
                numEffected = cmd1.ExecuteNonQuery();
            }
            if (numEffected != 0)
            {
                numEffected = 0;
                using (cmd2 = CreateDeleteUpdateMedRequestCommand("spDeleteDepsRequest", con, mr.ReqId))
                {
                    cmd2.Transaction = transaction;
                    numEffected = cmd2.ExecuteNonQuery();
                }
                if (numEffected != 0)
                {
                    for (int i = 0; i < depList.Count; i++)
                    {
                        numEffected = 0;
                        using (cmd3 = CreateUpdateInsertDepRequestCommandSP("spInsertDepRequest", con, mr.ReqId, depList[i]))
                        {
                            cmd3.Transaction = transaction;
                            numEffected = cmd3.ExecuteNonQuery();
                        }
                        if (numEffected == 1)
                            numEffected = -1;
                        else
                            break;
                    }
                }
            }

            if (numEffected == -1)// אם הכל הסתיים בהצלחה, נעשה commit
            {
                transaction.Commit();
                return 1;
            }
            else //אם לא כל 3 הפרוצדורות החזירו ערך שינוי, נעשה rollback 
            {
                transaction.Rollback();
                return 0;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException: " + sqlEx.Message);
            return 0;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a MedRequest in the MedRequests table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateMedRequestApproved(int reqId, int aUser, int aDep)
    {
        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }
        cmd = CreateUpdateMedRequestCommandSP("spUpdateMedRequestApproved", con, reqId, aUser, aDep);

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update Approved Transport MedRequest in the MedRequests table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateRequestTransport(int reqId, char kind)
    {
        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }
        if (kind == 'A') //A meanes the transport was approved
            cmd = CreateDeleteUpdateMedRequestCommand("spUpdateMedRequestApprovedTransport", con, reqId);
        else //C meanes the transport was cancelled
            cmd = CreateDeleteUpdateMedRequestCommand("spUpdateMedRequestDeleteTransport", con, reqId);

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------
    // This method Delete MewRequest by reqId
    //--------------------------------------------------------------------
    public int DeleteMedRequest(int reqId)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateDeleteUpdateMedRequestCommand("spDeleteMedRequests", con, reqId);

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the Update/Insert SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertMedRequestCommandSP(String spName, SqlConnection con, MedRequest mr)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 30;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command


        cmd.Parameters.AddWithValue("@reqId", mr.ReqId);
        cmd.Parameters.AddWithValue("@cUser", mr.CUser);
        cmd.Parameters.AddWithValue("@aUser", mr.AUser);
        cmd.Parameters.AddWithValue("@cDep", mr.CDep);
        cmd.Parameters.AddWithValue("@aDep", mr.ADep);
        cmd.Parameters.AddWithValue("@medId", mr.MedId);
        cmd.Parameters.AddWithValue("@reqQty", mr.ReqQty);
        cmd.Parameters.AddWithValue("@reqStatus", mr.ReqStatus);
        cmd.Parameters.AddWithValue("@reqDate", mr.ReqDate);

        return cmd;

    }

    //---------------------------------------------------------------------------------
    // Create the Update/Insert SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertDepRequestCommandSP(String spName, SqlConnection con, int reqId, int reqDep)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 30;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@reqId", reqId);
        cmd.Parameters.AddWithValue("@reqDep", reqDep);

        return cmd;

    }

    //---------------------------------------------------------------------------------
    // Create the Update SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateMedRequestCommandSP(String spName, SqlConnection con, int reqId, int aUser, int aDep)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command


        cmd.Parameters.AddWithValue("@reqId", reqId);
        cmd.Parameters.AddWithValue("@aUser", aUser);
        cmd.Parameters.AddWithValue("@aDep", aDep);

        return cmd;

    }

    //--------------------------------------------------------------------
    // Create the Delete or Uupdate MedRequest SqlCommand
    //--------------------------------------------------------------------
    private SqlCommand CreateDeleteUpdateMedRequestCommand(String spName, SqlConnection con, int reqId)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command, can also be stored procedure

        cmd.Parameters.AddWithValue("@reqId", reqId);

        return cmd;
    }


    //--------------------------------------------------------------------------------------------------
    // This method Read MedRequests from the MedRequests table
    //--------------------------------------------------------------------------------------------------
    public List<MedRequest> ReadMedRequests()
    {
        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadMedRequests", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<MedRequest> list = new List<MedRequest>();

            while (dataReader.Read())
            {
                MedRequest mr = new MedRequest();
                mr.ReqId = Convert.ToInt32(dataReader["ReqId"]);
                mr.CUser = Convert.ToInt32(dataReader["CUser"]);
                mr.AUser = Convert.ToInt32(dataReader["AUser"]);
                mr.CDep = Convert.ToInt32(dataReader["CDep"]);
                mr.ADep = Convert.ToInt32(dataReader["ADep"]); ;
                mr.MedId = Convert.ToInt32(dataReader["MedId"]);
                mr.ReqQty = (float)Convert.ToSingle(dataReader["ReqQty"]);
                mr.ReqStatus = Convert.ToChar(dataReader["ReqStatus"]);
                mr.ReqDate = Convert.ToDateTime(dataReader["ReqDate"]);
                list.Add(mr);

            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // 5 methods bellow: Read MedRequestsObjects and Create read command 
    //--------------------------------------------------------------------------------------------------
    public Object ReadMedRequestsManager()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadMedRequestsManager", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                    reqDate = Convert.ToDateTime(dataReader["reqDate"]),
                    mazNum = dataReader["mazNum"].ToString(),
                    medName = dataReader["medName"].ToString(),
                    cDepName = dataReader["cDepName"].ToString(),
                    aDepName = dataReader["aDepName"].ToString(),
                    reqQty = Convert.ToInt32(dataReader["reqQty"]),
                    reqStatus = dataReader["reqStatus"].ToString(),
                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }
    public Object ReadMedRequestsNurseMine(int depId)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadObjectCommandSP("spReadMedRequestsNurseMine", con, depId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                    reqId = Convert.ToInt32(dataReader["reqId"]),
                    reqDate = Convert.ToDateTime(dataReader["reqDate"]),
                    medId = Convert.ToInt32(dataReader["medId"]),
                    medName = dataReader["medName"].ToString(),
                    cUserId = Convert.ToInt32(dataReader["cUserId"]),
                    cNurseName = dataReader["cNurseName"].ToString(),
                    aDepId = Convert.ToInt32(dataReader["aDepId"]),
                    aDepName = dataReader["aDepName"].ToString(),
                    aUserId = Convert.ToInt32(dataReader["aUserId"]),
                    aNurseName = dataReader["aNurseName"].ToString(),
                    reqStatus = Convert.ToChar(dataReader["reqStatus"]),
                    reqQty = (float)Convert.ToSingle(dataReader["reqQty"])
                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }
    public Object ReadDepRequestsNurseOthers(int depId)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadObjectCommandSP("spReadDepRequestsNurseOthers", con, depId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                int stcQty = 0;
                if (!dataReader.IsDBNull(dataReader.GetOrdinal("stcQty")))
                    stcQty = Convert.ToInt32(dataReader["stcQty"]);

                listObj.Add(new
                {
                    reqId = Convert.ToInt32(dataReader["reqId"]),
                    cDepId = Convert.ToInt32(dataReader["cDepId"]),
                    depName = dataReader["depName"].ToString(),
                    cNurseName = dataReader["cNurseName"].ToString(),
                    reqDate = Convert.ToDateTime(dataReader["reqDate"]),
                    medName = dataReader["medName"].ToString(),
                    reqQty = Convert.ToInt32(dataReader["reqQty"]),
                    stcQty = stcQty,
                    reqStatus = dataReader["reqStatus"].ToString(),
                    aDep = Convert.ToInt32(dataReader["aDep"])

                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }
    public Object ReadDepRequestsReport(int depId)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadDepObjectCommandSP("spReadMedRequestsReport", con, depId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                    mazNum = dataReader["mazNum"].ToString(),
                    medName = dataReader["medName"].ToString(),
                    reqMonth = dataReader["reqMonth"].ToString(),
                    reqStatus = dataReader["reqStatus"].ToString(),
                    sumQty = (float)Convert.ToSingle(dataReader["sumQty"])
                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    private SqlCommand CreateReadObjectCommandSP(String spName, SqlConnection con, int cDep)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@cDep", cDep);
        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // Read MedRequests DepTypes Details + Command
    //--------------------------------------------------------------------------------------------------
    public List<string> ReadReqDepTypes(int depId, int reqId)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadReqDepTypesCommandSP("spReadDepTypes", con, depId, reqId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<string> depTypes = new List<string>();

            while (dataReader.Read())
            {
                depTypes.Add(dataReader["depType"].ToString());
            }
            return depTypes;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }
    private SqlCommand CreateReadReqDepTypesCommandSP(String spName, SqlConnection con, int cDep, int reqId)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@reqId", reqId);
        cmd.Parameters.AddWithValue("@cDep", cDep);

        return cmd;
    }


    //--------------------------------------------------------------------------------------------------
    // This method Update MedRequest do decline status in the MedRequests table 
    //--------------------------------------------------------------------------------------------------
    public void UpdateDeclineReqs(ILogger<TimedHostedService> _logger)
    {
        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateRequestsDeclineCommand("spUpdateMedRequestsToDecline", con);

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            Console.WriteLine("Change Time: " + DateTime.Now + "Num Effected: " + numEffected);
        }
        catch (Exception ex)
        {
            // write to log
            _logger.LogError(ex.Message);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the update request into decline status SqlCommand 
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateRequestsDeclineCommand(String spName, SqlConnection con)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 80;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        return cmd;
    }

   


    /*****************PushOrders*****************/

    //--------------------------------------------------------------------------------------------------
    // This method insert a PushOrder to the PushOrders table 
    //--------------------------------------------------------------------------------------------------
    public bool InsertPushOrder(PushOrder po)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        int orderId;
        int numEffected = 0;
        int MedListCount = po.MedList.Count;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction(); //פתיחת טרנזקציה

        try
        {
            using (cmd1 = CreateUpdateInsertPushOrderCommandSP("spInsertPushOrder", con, po)) //יצירת command
            {
                cmd1.Transaction = transaction; //הפעלת טרנזקציה על הcommand
                orderId = Convert.ToInt32(cmd1.ExecuteScalar()); //הרצת command
            }
            for (int i = 0; i < po.MedList.Count; i++)
            {
                using (cmd2 = CreateUpdateInsertMedOrderCommandSP("spInsertPushMedOrders", con, orderId, po.MedList[i]))//יצירת command
                {
                    cmd2.Transaction = transaction;//הפעלת טרנזקציה על הcommand
                    numEffected += cmd2.ExecuteNonQuery(); //הרצת command
                }
            }

            if (MedListCount == numEffected)// אם הכל הסתיים בהצלחה, נעשה commit
            {
                transaction.Commit();
                return true;
            }
            else //אם לא כל התרופות בהזמנה נשמרו במסד הנתונים, נעשה rollback 
            {
                transaction.Rollback(); //ביטול כל הפעולות הקודמות
                return false;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:" + sqlEx.Message);
            return false;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a PushOrder in the PushOrders table 
    //--------------------------------------------------------------------------------------------------
    public bool UpdatePushOrder(PushOrder po)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        SqlCommand cmd3;
        int numEffected = 0;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction(); //פתיחת טרנזקציה

        try
        {
            using (cmd1 = CreateUpdateInsertPushOrderCommandSP("spUpdatePushOrder", con, po))
            {
                cmd1.Transaction = transaction; //הפעלת טרנזקציה על הcommand
                numEffected = cmd1.ExecuteNonQuery();
            }

            if (numEffected != 0)
            {
                numEffected = 0;
                for (int i = 0; i < po.MedList.Count; i++)
                {
                    using (cmd2 = CreateUpdateInsertMedOrderCommandSP("spUpdatePushMedOrder", con, po.orderId, po.MedList[i]))
                    {
                        cmd2.Transaction = transaction;
                        numEffected = cmd2.ExecuteNonQuery();
                    }

                    if (numEffected != 0)
                    {
                        if (po.MedList[i].SupQty > 0)
                        {
                            Stock stock = new Stock(0, po.MedList[i].MedId, po.depId, po.MedList[i].SupQty, DateTime.Now);

                            using (cmd3 = CreateUpdateInsertStockCommandSP("spInsertIntoStock", con, stock))
                            {
                                cmd3.Transaction = transaction;
                                cmd3.ExecuteNonQuery();
                            }
                        }
                        numEffected = -1;
                    }
                    else
                        break;
                }
            }

            if (numEffected == -1) //כל שלושת הפרוצדורות החזירו ערך שינוי
            {
                transaction.Commit();   // אם הכל הסתיים בהצלחה, נעשה commit
                return true;
            }
            else
            {
                transaction.Rollback();  //כאשר אחת או יותר מהפרוצדורות לא החזירו ערך שינוי rollback נבצע
                return false;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:" + sqlEx.Message);
            return false;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה אחרת, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the Update/Insert SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertPushOrderCommandSP(String spName, SqlConnection con, PushOrder po)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@pushId", po.OrderId);
        cmd.Parameters.AddWithValue("@pUser", po.PUser);
        cmd.Parameters.AddWithValue("@depId", po.DepId);
        cmd.Parameters.AddWithValue("@reportNum", po.ReportNum);
        cmd.Parameters.AddWithValue("@pushStatus", po.Status);
        cmd.Parameters.AddWithValue("@pushDate", po.OrderDate);
        cmd.Parameters.AddWithValue("@lastUpdate", po.LastUpdate);

        return cmd;

    }

    //--------------------------------------------------------------------------------------------------
    // This method Read PushOrders from the PushOrders table
    //--------------------------------------------------------------------------------------------------
    public List<PushOrder> ReadPushOrders()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadPushOrders", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<PushOrder> list = new List<PushOrder>();
            int lastOrderId = 0;

            while (dataReader.Read())
            {
                PushOrder po = new PushOrder();
                po.OrderId = Convert.ToInt32(dataReader["O.PushId"]);
                po.PUser = Convert.ToInt32(dataReader["PUser"]);
                po.DepId = Convert.ToInt32(dataReader["DepId"]);
                po.ReportNum = dataReader["ReportNum"].ToString();
                po.Status = Convert.ToChar(dataReader["PushStatus"]);
                po.OrderDate = Convert.ToDateTime(dataReader["PushDate"]);
                po.LastUpdate = Convert.ToDateTime(dataReader["LastUpdate"]);
                if (po.MedList == null) //במידה ואין תרופות בהזמנה, ניצור רשימה ריקה
                    po.MedList = new List<MedOrder>();

                if (po.OrderId == lastOrderId) //בדיקה האם מדובר באותה הזמנה
                {
                    if (dataReader["MO.PushId"] != DBNull.Value) //נכניס תרופה להזמנה כל עוד פרטי התרופה לא null
                    {
                        MedOrder mo = new MedOrder();
                        mo.MedId = Convert.ToInt32(dataReader["MedId"]);
                        mo.PoQty = (float)(dataReader["PoQty"]);
                        mo.SupQty = (float)(dataReader["SupQty"]);
                        mo.MazNum = (dataReader["MazNum"]).ToString();
                        list[list.Count - 1].MedList.Add(mo); //תרופה נכנסת לאותה הזמנה
                    }
                }
                else //הכנסת תרופה בתוך הזמנה חדשה 
                {
                    if (dataReader["MO.PushId"] != DBNull.Value)
                    {
                        MedOrder mo = new MedOrder();
                        mo.MedId = Convert.ToInt32(dataReader["MedId"]);
                        mo.PoQty = (float)(dataReader["PoQty"]);
                        mo.SupQty = (float)(dataReader["SupQty"]);
                        mo.MazNum = (dataReader["MazNum"]).ToString();
                        po.MedList.Add(mo); //תרופה נכנסת להזמנה חדשה
                    }
                    list.Add(po); //הכנסת הזמנה חדשה לרשימת הזמנות
                    lastOrderId = po.OrderId; //קביעת מספר ההזמנה האחרון שנכנס לרשימת ההזמנות
                }
            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read PushOrders from the PushOrders table
    //--------------------------------------------------------------------------------------------------
    public Object ReadDepPushOrders(int depId)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadDepObjectCommandSP("spReadPushOrdersMine", con, depId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                    orderId = Convert.ToInt32(dataReader["orderId"]),
                    pharmacistId = Convert.ToInt32(dataReader["pharmacistId"]),
                    pharmacistName = dataReader["pharmacistName"].ToString(),
                    orderStatus = Convert.ToChar(dataReader["orderStatus"]),
                    orderDate = Convert.ToDateTime(dataReader["orderDate"]),
                    lastUpdate = Convert.ToDateTime(dataReader["lastUpdate"])
                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read PushOrders from the PushOrders table
    //--------------------------------------------------------------------------------------------------
    public Object ReadPushOrdersPharm()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadPushOrdersPharm", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                    orderId = Convert.ToInt32(dataReader["pushId"]),
                    orderDate = Convert.ToDateTime(dataReader["orderDate"]),
                    orderTime = Convert.ToDateTime(dataReader["orderTime"]).TimeOfDay,
                    depId = Convert.ToInt32(dataReader["depId"]),
                    depName = dataReader["depName"].ToString(),
                    pharmId = Convert.ToInt32(dataReader["pUser"]),
                    pharmName = dataReader["pharmName"].ToString(),
                    reportNum = dataReader["reportNum"].ToString(),
                    status = dataReader["pushStatus"].ToString(),
                    lastUpdate = Convert.ToDateTime(dataReader["lastUpdate"])
                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }



    /*****************PullOrders*****************/

    //--------------------------------------------------------------------------------------------------
    // This method insert a PullOrder to the PullOrders table 
    //--------------------------------------------------------------------------------------------------
    public bool InsertPullOrder(PullOrder po)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        int orderId;
        int numEffected = 0;
        int MedListCount = po.MedList.Count;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction();

        try
        {
            using (cmd1 = CreateUpdateInsertPullOrderCommandSP("spInsertPullOrder", con, po))
            {
                cmd1.Transaction = transaction;
                orderId = Convert.ToInt32(cmd1.ExecuteScalar());
            }

            for (int i = 0; i < MedListCount; i++)
            {
                using (cmd2 = CreateUpdateInsertMedOrderCommandSP("spInsertPullMedOrders", con, orderId, po.MedList[i]))
                {
                    cmd2.Transaction = transaction;
                    numEffected += cmd2.ExecuteNonQuery();
                }
            }

            if (MedListCount == numEffected)// אם הכל הסתיים בהצלחה, נעשה commit
            {
                transaction.Commit();
                return true;
            }
            else //אם לא כל התרופות בהזמנה נשמרו במסד הנתונים, נעשה rollback 
            {
                transaction.Rollback();
                return false;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:" + sqlEx.Message);
            return false;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a PullOrder in the PullOrders table 
    //--------------------------------------------------------------------------------------------------
    public bool UpdatePullOrderNurse(PullOrder po)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        SqlCommand cmd3;
        int numEffected = 0;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction();

        try
        {
            using (cmd1 = CreateUpdatePullOrderCommandSP("spUpdatePullOrderNurse", con, po.OrderId, po.NUser, 'N')) //N=Nurse P=Pharmacist
            {
                cmd1.Transaction = transaction;
                numEffected = cmd1.ExecuteNonQuery();
            }
            if (numEffected != 0)
            {
                numEffected = 0;
                using (cmd2 = CreateDeleteOrderCommand("spDeleteMedsPullOrder", con, po.OrderId, 2)) // 1=pushOrder, 2=pullOrder 
                {
                    cmd2.Transaction = transaction;
                    numEffected = cmd2.ExecuteNonQuery();//מוחזר כמות התרופות שנמחקו מאותה הזמנה
                }
                if (numEffected != 0)
                {
                    for (int i = 0; i < po.MedList.Count; i++)
                    {
                        using (cmd3 = CreateUpdateInsertMedOrderCommandSP("spInsertPullMedOrders", con, po.OrderId, po.MedList[i]))
                        {
                            cmd3.Transaction = transaction;
                            numEffected = cmd3.ExecuteNonQuery();
                        }
                        if (numEffected == 1)
                            numEffected = -1;
                        else
                            break;
                    }
                }
            }

            if (numEffected == -1)// אם הכל הסתיים בהצלחה, נעשה commit
            {
                transaction.Commit();
                return true;
            }
            else //אם לא כל 3 הפרוצדורות החזירו ערך שינוי, נעשה rollback 
            {
                transaction.Rollback();
                return false;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:" + sqlEx.Message);
            return false;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a PullOrder in the PullOrders table 
    //--------------------------------------------------------------------------------------------------
    public int UpdatePullOrderPharmTaken(int pullId, int pUser)
    {
        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdatePullOrderCommandSP("spUpdatePullOrderPharmTaken", con, pullId, pUser, 'P'); //N=Nurse P=Pharmacist

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a PullOrder in the PullOrders table 
    //--------------------------------------------------------------------------------------------------
    public bool UpdatePullOrderPharmIssued(PullOrder po)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        SqlCommand cmd3;
        int numEffected = 0;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction();

        try
        {
            using (cmd1 = CreateUpdateInsertPullOrderCommandSP("spUpdatePullOrderPharmIssued", con, po))
            {
                cmd1.Transaction = transaction;
                numEffected = cmd1.ExecuteNonQuery();
            }

            if (numEffected != 0)
            {
                numEffected = 0;
                for (int i = 0; i < po.MedList.Count; i++)
                {
                    using (cmd2 = CreateUpdateInsertMedOrderCommandSP("spUpdatePullMedOrder", con, po.orderId, po.MedList[i]))
                    {
                        cmd2.Transaction = transaction;
                        numEffected = cmd2.ExecuteNonQuery();
                    }

                    if (numEffected != 0)
                    {
                        if (po.MedList[i].SupQty > 0)
                        {
                            Stock stock = new Stock(0, po.MedList[i].MedId, po.depId, po.MedList[i].SupQty, DateTime.Now);

                            using (cmd3 = CreateUpdateInsertStockCommandSP("spInsertIntoStock", con, stock))
                            {
                                cmd3.Transaction = transaction;
                                cmd3.ExecuteNonQuery();
                            }
                        }
                        numEffected = -1;
                    }
                    else
                        break;
                }
            }

            if (numEffected == -1) //כל שלושת הפרוצדורות החזירו ערך שינוי
            {
                transaction.Commit();   // אם הכל הסתיים בהצלחה, נעשה commit
                return true;
            }
            else
            {
                transaction.Rollback();  //כאשר אחת או יותר מהפרוצדורות לא לא החזירו ערך שינוי rollback נבצע
                return false;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:" + sqlEx.Message);
            return false;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה אחרת, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the Insert/Update SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertPullOrderCommandSP(String spName, SqlConnection con, PullOrder po)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@pullId", po.OrderId);
        cmd.Parameters.AddWithValue("@pUser", po.PUser);
        cmd.Parameters.AddWithValue("@nUser", po.NUser);
        cmd.Parameters.AddWithValue("@depId", po.DepId);
        cmd.Parameters.AddWithValue("@reportNum", po.ReportNum);
        cmd.Parameters.AddWithValue("@pullStatus", po.Status);
        cmd.Parameters.AddWithValue("@pullDate", po.OrderDate);
        cmd.Parameters.AddWithValue("@lastUpdate", po.LastUpdate);

        return cmd;

    }

    //---------------------------------------------------------------------------------
    // Create the UpdateNurse SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdatePullOrderCommandSP(String spName, SqlConnection con, int pullId, int userId, char kind)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@pullId", pullId);

        if (kind == 'N') //N=Nurse P=Pharmacist
            cmd.Parameters.AddWithValue("@nUser", userId);
        else
            cmd.Parameters.AddWithValue("@pUser", userId);

        return cmd;

    }

    //--------------------------------------------------------------------------------------------------
    // This method Read PullOrders from the PullOrders table
    //--------------------------------------------------------------------------------------------------
    public List<PullOrder> ReadPullOrders()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadPullOrders", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<PullOrder> list = new List<PullOrder>();
            int lastOrderId = 0;

            while (dataReader.Read())
            {
                PullOrder po = new PullOrder();
                po.OrderId = Convert.ToInt32(dataReader["O.PullId"]);
                po.PUser = Convert.ToInt32(dataReader["PUser"]);
                po.NUser = Convert.ToInt32(dataReader["NUser"]);
                po.DepId = Convert.ToInt32(dataReader["DepId"]);
                po.ReportNum = dataReader["ReportNum"].ToString();
                po.Status = Convert.ToChar(dataReader["PullStatus"]);
                po.OrderDate = Convert.ToDateTime(dataReader["PullDate"]);
                po.LastUpdate = Convert.ToDateTime(dataReader["LastUpdate"]);
                if (po.MedList == null) //במידה ואין תרופות בהזמנה, ניצור רשימה ריקה
                    po.MedList = new List<MedOrder>();

                if (po.OrderId == lastOrderId) //בדיקה האם מדובר באותה הזמנה
                {
                    if (dataReader["MO.PullId"] != DBNull.Value) //נכניס תרופה להזמנה כל עוד פרטי התרופה לא null
                    {
                        MedOrder mo = new MedOrder();
                        mo.MedId = Convert.ToInt32(dataReader["MedId"]);
                        mo.PoQty = (float)(dataReader["PoQty"]);
                        mo.SupQty = (float)(dataReader["SupQty"]);
                        mo.MazNum = (dataReader["MazNum"]).ToString();
                        list[list.Count - 1].MedList.Add(mo); //תרופה נכנסת לאותה הזמנה
                    }
                }
                else //הכנסת תרופה בתוך הזמנה חדשה 
                {
                    if (dataReader["MO.PullId"] != DBNull.Value)
                    {
                        MedOrder mo = new MedOrder();
                        mo.MedId = Convert.ToInt32(dataReader["MedId"]);
                        mo.PoQty = (float)(dataReader["PoQty"]);
                        mo.SupQty = (float)(dataReader["SupQty"]);
                        mo.MazNum = (dataReader["MazNum"]).ToString();
                        po.MedList.Add(mo); //תרופה נכנסת להזמנה חדשה
                    }
                    list.Add(po); //הכנסת הזמנה חדשה לרשימת הזמנות
                    lastOrderId = po.OrderId; //קביעת מספר ההזמנה האחרון שנכנס לרשימת ההזמנות
                }
            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read PullOrders from the PullOrders table by depId
    //--------------------------------------------------------------------------------------------------
    public Object ReadDepPullOrders(int depId)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadDepObjectCommandSP("spReadPullOrdersMine", con, depId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                    orderId = Convert.ToInt32(dataReader["orderId"]),
                    nurseId = Convert.ToInt32(dataReader["nurseId"]),
                    nurseName = dataReader["nurseName"].ToString(),
                    pharmacistId = Convert.ToInt32(dataReader["pharmacistId"]),
                    pharmacistName = dataReader["pharmacistName"].ToString(),
                    orderDate = Convert.ToDateTime(dataReader["orderDate"]),
                    orderStatus = Convert.ToChar(dataReader["orderStatus"]),
                    lastUpdate = Convert.ToDateTime(dataReader["lastUpdate"])
                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read PullOrder from the PullOrders table by orderId
    //--------------------------------------------------------------------------------------------------
    public Object ReadPullOrderPharm(int orderId)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadPullOrderCommandSP("spReadPullOrder", con, orderId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                    orderId = Convert.ToInt32(dataReader["pullId"]),
                    orderDate = Convert.ToDateTime(dataReader["orderDate"]),
                    orderTime = Convert.ToDateTime(dataReader["orderTime"]).TimeOfDay,
                    depId = Convert.ToInt32(dataReader["depId"]),
                    depName = dataReader["depName"].ToString(),
                    nurseId = Convert.ToInt32(dataReader["nUser"]),
                    nurseName = dataReader["nurseName"].ToString(),
                    pUser = Convert.ToInt32(dataReader["pUser"]),
                    pharmName = dataReader["pharmName"].ToString(),
                    reportNum = dataReader["reportNum"].ToString(),
                    status = dataReader["pullStatus"].ToString(),
                    lastUpdate = Convert.ToDateTime(dataReader["lastUpdate"])
                });
     
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    private SqlCommand CreateReadPullOrderCommandSP(String spName, SqlConnection con, int pullId)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@pullId", pullId);

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read PullOrders from the PullOrders table
    //--------------------------------------------------------------------------------------------------
    public Object ReadPullOrdersPharm()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadPullOrdersPharm", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                    orderId = Convert.ToInt32(dataReader["pullId"]),
                    orderDate = Convert.ToDateTime(dataReader["orderDate"]),
                    orderTime = Convert.ToDateTime(dataReader["orderTime"]).TimeOfDay,
                    depId = Convert.ToInt32(dataReader["depId"]),
                    depName = dataReader["depName"].ToString(),
                    nurseId = Convert.ToInt32(dataReader["nUser"]),
                    nurseName = dataReader["nurseName"].ToString(),
                    pharmId = Convert.ToInt32(dataReader["pUser"]),
                    pharmName = dataReader["pharmName"].ToString(),
                    reportNum = dataReader["reportNum"].ToString(),
                    status = dataReader["pullStatus"].ToString(),
                    lastUpdate = Convert.ToDateTime(dataReader["lastUpdate"])
                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }


    /*****************Global for PullOrders and PushOrders*****************/

    //--------------------------------------------------------------------------------------------------
    // This method Read OrderDetails from the Push/PullOrders and MedPush/PullOrders tables
    //--------------------------------------------------------------------------------------------------
    public Object ReadOrderDetails(int orderId, int type)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        if (type == 1) // if the order type is push 
            cmd = CreateReadOrdersObjectCommandSP("spReadPushOrderDetails", con, orderId);
        else // if the order type is pull 
            cmd = CreateReadOrdersObjectCommandSP("spReadPullOrderDetails", con, orderId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                    medId = Convert.ToInt32(dataReader["medId"]),
                    medName = dataReader["medName"].ToString(),
                    poQty = (float)(dataReader["poQty"]),
                    supQty = (float)(dataReader["supQty"])
                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the Read Order Object SqlCommand for both pull and push order
    //---------------------------------------------------------------------------------
    private SqlCommand CreateReadOrdersObjectCommandSP(String spName, SqlConnection con, int orderId)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@orderId", orderId);

        return cmd;
    }

    //---------------------------------------------------------------------------------
    // Create the Update/Insert SqlCommand for both pull and push order
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertMedOrderCommandSP(String spName, SqlConnection con, int orderId, MedOrder mo)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@orderId", orderId);
        cmd.Parameters.AddWithValue("@medId", mo.MedId);
        cmd.Parameters.AddWithValue("@poQty", mo.PoQty);
        cmd.Parameters.AddWithValue("@supQty", mo.SupQty);
        cmd.Parameters.AddWithValue("@mazNum", mo.MazNum);

        return cmd;

    }

    //--------------------------------------------------------------------
    // This method Delete Pull/Pull Order by orderId
    //--------------------------------------------------------------------
    public int DeleteOrder(int orderId, int type)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        if (type == 1) // if the order type is push 
            cmd = CreateDeleteOrderCommand("spDeletePushOrder", con, orderId, type);
        else // if the order type is pull 
            cmd = CreateDeleteOrderCommand("spDeletePullOrder", con, orderId, type);

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------
    // Create the DeleteOrder SqlCommand
    //--------------------------------------------------------------------
    private SqlCommand CreateDeleteOrderCommand(String spName, SqlConnection con, int orderId, int type)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command, can also be stored procedure

        if (type == 1) // if the order type is push 
            cmd.Parameters.AddWithValue("@pushId", orderId);
        else // if the order type is pull 
            cmd.Parameters.AddWithValue("@pullId", orderId);

        return cmd;
    }




    /***************** Prediction *****************/

    //--------------------------------------------------------------------------------------------------
    // This method Read Predictions from the Predictions table
    //--------------------------------------------------------------------------------------------------
    public List<NormPredictions> ReadNormPrediction(int dep, int med)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadPredictionCommand("spReadDataPredictions", con, dep, med);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<NormPredictions> list = new List<NormPredictions>();

            while (dataReader.Read())
            {
                NormPredictions p = new NormPredictions();
                p.UsageOneMonthAgo = Convert.ToDouble(dataReader["UsageOneMonthAgo"]);
                p.UsageOneYearAgo = Convert.ToDouble(dataReader["UsageOneYearAgo"]);
                p.Season = dataReader["Season"].ToString();
                p.FutureUsage = Convert.ToDouble(dataReader["FutureUsage"]);
                list.Add(p);

            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read X1 X1 from the usage table
    //--------------------------------------------------------------------------------------------------
    public Object ReadX1X2(int dep, int med)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadPredictionCommand("spReadX1X2Usage", con, dep, med);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            Object Obj = new Object();

            while (dataReader.Read())
            {
                Obj = new
                {
                    x1 = (double)Convert.ToSingle(dataReader["usageOneMonthAgo"]),
                    x2 = (double)Convert.ToSingle(dataReader["usageOneYearAgo"])
                };
            }
            return Obj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------
    // Create Read Norm Prediction SqlCommand
    //--------------------------------------------------------------------
    private SqlCommand CreateReadPredictionCommand(String spName, SqlConnection con, int dep, int med)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 80;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command, can also be stored procedure

        cmd.Parameters.AddWithValue("@medId", med);
        cmd.Parameters.AddWithValue("@depId", dep);

        return cmd;
    }



    /***************** Dashboard *****************/
    public Object ReadData(int dep, int med, int month, string year)
    {
        ConcurrentDictionary<int, Object> result = new ConcurrentDictionary<int, Object>();
        Parallel.ForEach(new KeyValuePair<int, Func<Object>>[] { new KeyValuePair<int, Func<Object>>(1,() => ReadBarChart(dep, med, month, year)),
                                                                 new KeyValuePair<int, Func<Object>>(2,() => ReadLineChart(dep, med, month, year)),
                                                                 new KeyValuePair<int, Func<Object>>(3, () =>ReadBoxs(dep, med, month, year)),
                                                                 new KeyValuePair<int, Func<Object>>(4,() => ReadUpdates()),
                                                                 new KeyValuePair<int, Func<Object>>(5,() => ReadPieChart(dep, med, month, year))},
            f =>
            {
                Object data = f.Value.Invoke();
                result.TryAdd(f.Key, data);

            });

        dynamic data = new System.Dynamic.ExpandoObject();
        foreach (int key in result.Keys)
        {
            switch (key)
            {
                case 1:
                    data.barChart = result[key];
                    break;
                case 2:
                    data.lineChart = result[key];
                    break;
                case 3:
                    data.boxs = result[key];
                    break;
                case 4:
                    data.updates = result[key];
                    break;
                case 5:
                    data.pieChart = result[key];
                    break;
            }
        };

        return data;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read Boxes for dashboard
    //--------------------------------------------------------------------------------------------------
    public Object ReadBoxs(int dep, int med, int month, string year)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            //write to log
            throw (ex);
        }

        cmd = CreateReadDashboardDataCommand("spDashboardBoxs", con, dep, med, month, year);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            Object Obj = new Object();

            while (dataReader.Read())
            {
                Obj = new
                {
                    CurrentPO = Convert.ToInt32(dataReader["CurrentPO"]),
                    PrevPO = Convert.ToInt32(dataReader["PrevPO"]),
                    CurrentMR = Convert.ToInt32(dataReader["CurrentMR"]),
                    PrevMR = Convert.ToInt32(dataReader["PrevMR"]),
                    CurrentMRD = Convert.ToInt32(dataReader["CurrentMRD"]),
                    PrevMRD = Convert.ToInt32(dataReader["PrevMRD"])
                };
            }
            return Obj;
        }
        catch (Exception ex)
        {
            //write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                //close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read Line chart for dashboard
    //--------------------------------------------------------------------------------------------------
    public Object ReadLineChart(int dep, int med, int month, string year)
    {

        SqlConnection con1;
        SqlConnection con2;
        SqlCommand cmd1;
        SqlCommand cmd2;

        try
        {
            con1 = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }
        try
        {
            con2 = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd1 = CreateReadDashboardDataCommand("spDashboardUsageLineChart", con1, dep, med, month, year);
        cmd2 = CreateReadDashboardDataCommand("spDashboardIssuedLineChart", con2, dep, med, month, year);

        try
        {
            SqlDataReader dataReader1 = cmd1.ExecuteReader(CommandBehavior.CloseConnection);

            int[] usageQty = new int[12];
            int[] poQty = new int[12];

            int index = 0;
            while (dataReader1.Read())
            {
                usageQty[index] = Convert.ToInt32(dataReader1["qty"]);
                index++;
            }

            SqlDataReader dataReader2 = cmd2.ExecuteReader(CommandBehavior.CloseConnection);

            index = 0;
            while (dataReader2.Read())
            {
                poQty[index] = Convert.ToInt32(dataReader2["qty"]);
                index++;
            }

            var Obj = new[]
            {
                new { name = "צריכה בפועל", data = usageQty },
                new { name = "הנפקה", data = poQty }
        };

            return Obj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con1 != null)
            {
                // close the db connection
                con1.Close();
            }
            if (con2 != null)
            {
                // close the db connection
                con2.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read Bar chart for dashboard
    //--------------------------------------------------------------------------------------------------
    public Object ReadBarChart(int dep, int med, int month, string year)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            //write to log
            throw (ex);
        }

        cmd = CreateReadDashboardDataCommand("spDashboardBarChart", con, dep, med, month, year);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            int[] barQty = new int[6];

            while (dataReader.Read())
            {
                if (!dataReader.IsDBNull(dataReader.GetOrdinal("SupPullPO")))
                    barQty[0] = Convert.ToInt32(dataReader["SupPullPO"]);
                else
                    barQty[0] = 0;
                if (!dataReader.IsDBNull(dataReader.GetOrdinal("NotSupPullPO")))
                    barQty[1] = Convert.ToInt32(dataReader["NotSupPullPO"]);
                else
                    barQty[1] = 0;
                if (!dataReader.IsDBNull(dataReader.GetOrdinal("SupPushPO")))
                    barQty[2] = Convert.ToInt32(dataReader["SupPushPO"]);
                else
                    barQty[2] = 0;
                if (!dataReader.IsDBNull(dataReader.GetOrdinal("NotSupPushPO")))
                    barQty[3] = Convert.ToInt32(dataReader["NotSupPushPO"]);
                else
                    barQty[3] = 0;
                if (!dataReader.IsDBNull(dataReader.GetOrdinal("SupMR")))
                    barQty[4] = Convert.ToInt32(dataReader["SupMR"]);
                else
                    barQty[4] = 0;
                //if (!dataReader.IsDBNull(dataReader.GetOrdinal("WaitMR")))
                //    barQty[5] = Convert.ToInt32(dataReader["WaitMR"]);
                //else
                //    barQty[5] = 0;
                if (!dataReader.IsDBNull(dataReader.GetOrdinal("usageQty")))
                    barQty[5] = Convert.ToInt32(dataReader["usageQty"]);
                else
                    barQty[5] = 0;
            }

            return barQty;
        }
        catch (Exception ex)
        {
            //write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                //close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read pei chart for dashboard
    //--------------------------------------------------------------------------------------------------
    public Object ReadPieChart(int dep, int med, int month, string year)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            //write to log
            throw (ex);
        }

        cmd = CreateReadDashboardDataCommand("spDashboardPieChart", con, dep, med, month, year);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                    value = Convert.ToInt32(dataReader["totalQty"]),
                    name = dataReader["depName"].ToString(),
                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            //write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                //close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read update and masseges for the dashboard
    //--------------------------------------------------------------------------------------------------
    public Object ReadUpdates()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spDashboardMessages", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {
                listObj.Add(new
                {
                    title = dataReader["titleM"].ToString(),
                    text = dataReader["textM"].ToString(),
                    type = Convert.ToInt32(dataReader["typeM"]),
                    date = dataReader["dateM"].ToString(),
                    id = dataReader["idM"].ToString()
                });
            }
            return listObj;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------
    // Create Read dashboard data SqlCommand
    //--------------------------------------------------------------------
    private SqlCommand CreateReadDashboardDataCommand(String spName, SqlConnection con, int dep, int med, int month, string year)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 80;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command, can also be stored procedure

        cmd.Parameters.AddWithValue("@depId", dep);
        cmd.Parameters.AddWithValue("@medId", med);
        cmd.Parameters.AddWithValue("@month", month);
        cmd.Parameters.AddWithValue("@year", year);

        return cmd;
    }



    /***************** Token React *****************/

    //--------------------------------------------------------------------------------------------------
    // This method Update Token from the Tokens table
    //--------------------------------------------------------------------------------------------------
    public int UpdateToken(int userId, string token)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateInsertTokenCommandSP("spUpdateToken", con, userId, token);

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the Update SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertTokenCommandSP(String spName, SqlConnection con, int userId, string token)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@userId", userId);
        cmd.Parameters.AddWithValue("@token", token);

        return cmd;

    }

    //--------------------------------------------------------------------------------------------------
    // Read Tokens Details + Command
    //--------------------------------------------------------------------------------------------------
    public List<string> ReadToken(int depId)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadDepTokensCommandSP("spReadDepTokens", con, depId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<string> Tokens = new List<string>();

            while (dataReader.Read())
            {
                Tokens.Add(dataReader["token"].ToString());
            }
            return Tokens;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }
    private SqlCommand CreateReadDepTokensCommandSP(String spName, SqlConnection con, int depId)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@depId", depId);

        return cmd;
    }


    /*****************Norms*****************/

    //--------------------------------------------------------------------------------------------------
    // This method inserts a Norm to the Norms table 
    //--------------------------------------------------------------------------------------------------
    public bool InsertNorm(Norm norm)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        int normId;
        int numEffected = 0;
        int MedListCount = norm.MedList.Count;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction(); //פתיחת טרנזקציה

        try
        {
            using (cmd1 = CreateUpdateInsertNormCommandSP("spInsertNorm", con, norm)) //יצירת command
            {
                cmd1.Transaction = transaction; //הפעלת טרנזקציה על הcommand
                normId = Convert.ToInt32(cmd1.ExecuteScalar()); //הרצת command
            }
            for (int i = 0; i < norm.MedList.Count; i++)
            {
                using (cmd2 = CreateUpdateInsertMedNormCommandSP("spInsertMedNorm", con, normId, norm.MedList[i]))//יצירת command
                {
                    cmd2.Transaction = transaction;//הפעלת טרנזקציה על הcommand
                    numEffected += cmd2.ExecuteNonQuery(); //הרצת command
                }
            }

            if (MedListCount == numEffected)// אם הכל הסתיים בהצלחה, נעשה commit
            {
                transaction.Commit();
                return true;
            }
            else //אם לא כל התרופות בהזמנה נשמרו במסד הנתונים, נעשה rollback 
            {
                transaction.Rollback(); //ביטול כל הפעולות הקודמות
                return false;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:" + sqlEx.Message);
            return false;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a Norm in the Norms table 
    //--------------------------------------------------------------------------------------------------
    public bool UpdateNorm(Norm norm)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        SqlCommand cmd3;
        int numEffected = 0;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction();

        try
        {
            using (cmd1 = CreateUpdateInsertNormCommandSP("spUpdateNorm", con, norm))
            {
                cmd1.Transaction = transaction;
                numEffected = cmd1.ExecuteNonQuery();
            }
            if (numEffected != 0)
            {
                numEffected = 0;
                using (cmd2 = CreateDeleteMedNormCommand("spDeleteMedsNorm", con, norm.NormId))
                {
                    cmd2.Transaction = transaction;
                    numEffected = cmd2.ExecuteNonQuery();//מוחזר כמות התרופות שנמחקו מאותה הזמנה
                }
                if (numEffected != 0)
                {
                    for (int i = 0; i < norm.MedList.Count; i++)
                    {
                        using (cmd3 = CreateUpdateInsertMedNormCommandSP("spInsertMedNorm", con, norm.NormId, norm.MedList[i]))
                        {
                            cmd3.Transaction = transaction;
                            numEffected = cmd3.ExecuteNonQuery();
                        }
                        if (numEffected == 1)
                            numEffected = -1;
                        else
                            break;
                    }
                }
            }

            if (numEffected == -1)// אם הכל הסתיים בהצלחה, נעשה commit
            {
                transaction.Commit();
                return true;
            }
            else //אם לא כל 3 הפרוצדורות החזירו ערך שינוי, נעשה rollback 
            {
                transaction.Rollback();
                return false;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:" + sqlEx.Message);
            return false;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the Update/Insert SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertNormCommandSP(String spName, SqlConnection con, Norm norm)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@normId", norm.NormId);
        cmd.Parameters.AddWithValue("@depId", norm.DepId);

        return cmd;
    }

    //---------------------------------------------------------------------------------
    // Create the Update/Insert SqlCommand for norm
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertMedNormCommandSP(String spName, SqlConnection con, int normId, MedNorm medNorm)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@normId", normId);
        cmd.Parameters.AddWithValue("@medId", medNorm.MedId);
        cmd.Parameters.AddWithValue("@normQty", medNorm.NormQty);
        cmd.Parameters.AddWithValue("@mazNum", medNorm.MazNum);
        return cmd;
    }

    //--------------------------------------------------------------------
    // Create the DeleteMedNorm SqlCommand
    //--------------------------------------------------------------------
    private SqlCommand CreateDeleteMedNormCommand(String spName, SqlConnection con, int normId)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command, can also be stored procedure

        cmd.Parameters.AddWithValue("@normId", normId);

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read Norms from the Norms table
    //--------------------------------------------------------------------------------------------------
    public List<Norm> ReadNorms()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadNorms", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Norm> list = new List<Norm>();
            int lastNormId = 0;

            while (dataReader.Read())
            {
                Norm norm = new Norm();
                norm.NormId = Convert.ToInt32(dataReader["NormId"]);
                norm.DepId = Convert.ToInt32(dataReader["DepId"]);
                norm.LastUpdate = Convert.ToDateTime(dataReader["LastUpdate"]);

                if (norm.MedList == null) //במידה ואין תרופות בתקן, ניצור רשימה ריקה
                    norm.MedList = new List<MedNorm>();

                if (norm.NormId == lastNormId) //בדיקה האם מדובר באותו תקן
                {
                    MedNorm med = new MedNorm();
                    med.MedId = Convert.ToInt32(dataReader["MedId"]);
                    med.NormQty = (float)(dataReader["NormQty"]);
                    med.MazNum = (dataReader["MazNum"]).ToString();
                    med.MedName = (dataReader["medName"]).ToString();
                    NormPredictions np = new NormPredictions();
                    med.PredQty = (int)np.MedNormPrediction(norm.DepId, med.MedId);
                    list[list.Count - 1].MedList.Add(med); //תרופה נכנסת לאותו תקן
                }
                else //הכנסת תרופה בתוך תקן חדש 
                {
                    MedNorm med = new MedNorm();
                    med.MedId = Convert.ToInt32(dataReader["MedId"]);
                    med.NormQty = (float)(dataReader["NormQty"]);
                    med.MazNum = (dataReader["MazNum"]).ToString();
                    med.MedName = (dataReader["medName"]).ToString();
                    NormPredictions np = new NormPredictions();
                    med.PredQty = (int)np.MedNormPrediction(norm.DepId, med.MedId);
                    norm.MedList.Add(med); //תרופה נכנסת לתקן חדש 
                    list.Add(norm); //הכנסת תקן חדש לרשימת התקנים
                    lastNormId = norm.NormId; //קביעת מספר התקן האחרון שנכנס לרשימת התקנים
                }
            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read DepMedNorms from the MedNorms table by depId
    //--------------------------------------------------------------------------------------------------
    public List<Norm> ReadDepNorm(int depId)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadDepObjectCommandSP("spReadDepNorm", con, depId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Norm> list = new List<Norm>();
            int lastNormId = 0;

            while (dataReader.Read())
            {
                Norm norm = new Norm();
                norm.NormId = Convert.ToInt32(dataReader["NormId"]);
                norm.DepId = Convert.ToInt32(dataReader["DepId"]);
                norm.LastUpdate = Convert.ToDateTime(dataReader["LastUpdate"]);

                if (norm.MedList == null) //במידה ואין תרופות בתקן, ניצור רשימה ריקה
                    norm.MedList = new List<MedNorm>();

                if (norm.NormId == lastNormId) //בדיקה האם מדובר באותו תקן
                {
                    MedNorm med = new MedNorm();
                    med.MedId = Convert.ToInt32(dataReader["MedId"]);
                    med.NormQty = (float)(dataReader["NormQty"]);
                    med.MazNum = (dataReader["MazNum"]).ToString();
                    med.MedName = (dataReader["medName"]).ToString();
                    list[list.Count - 1].MedList.Add(med); //תרופה נכנסת לאותו תקן
                }
                else //הכנסת תרופה בתוך תקן חדש 
                {
                    MedNorm med = new MedNorm();
                    med.MedId = Convert.ToInt32(dataReader["MedId"]);
                    med.NormQty = (float)(dataReader["NormQty"]);
                    med.MazNum = (dataReader["MazNum"]).ToString();
                    med.MedName = (dataReader["medName"]).ToString();
                    norm.MedList.Add(med); //תרופה נכנסת לתקן חדש 
                    list.Add(norm); //הכנסת תקן חדש לרשימת התקנים
                    lastNormId = norm.NormId; //קביעת מספר התקן האחרון שנכנס לרשימת התקנים
                }
            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read DepMedNorms with prediction by depId
    //--------------------------------------------------------------------------------------------------
    public List<Norm> ReadDepNormPrediction(int depId)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadDepObjectCommandSP("spReadDepNorm", con, depId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Norm> list = new List<Norm>();
            int lastNormId = 0;

            while (dataReader.Read())
            {
                Norm norm = new Norm();
                norm.NormId = Convert.ToInt32(dataReader["NormId"]);
                norm.DepId = Convert.ToInt32(dataReader["DepId"]);
                norm.LastUpdate = Convert.ToDateTime(dataReader["LastUpdate"]);

                if (norm.MedList == null) //במידה ואין תרופות בתקן, ניצור רשימה ריקה
                    norm.MedList = new List<MedNorm>();

                if (norm.NormId == lastNormId) //בדיקה האם מדובר באותו תקן
                {
                    MedNorm med = new MedNorm();
                    med.MedId = Convert.ToInt32(dataReader["MedId"]);
                    med.NormQty = (float)(dataReader["NormQty"]);
                    med.MazNum = (dataReader["MazNum"]).ToString();
                    med.MedName = (dataReader["medName"]).ToString();
                    NormPredictions np = new NormPredictions();
                    med.PredQty = (int)np.MedNormPrediction(depId, med.MedId);
                    list[list.Count - 1].MedList.Add(med); //תרופה נכנסת לאותו תקן
                }
                else //הכנסת תרופה בתוך תקן חדש 
                {
                    MedNorm med = new MedNorm();
                    med.MedId = Convert.ToInt32(dataReader["MedId"]);
                    med.NormQty = (float)(dataReader["NormQty"]);
                    med.MazNum = (dataReader["MazNum"]).ToString();
                    med.MedName = (dataReader["medName"]).ToString();
                    NormPredictions np = new NormPredictions();
                    med.PredQty = (int)np.MedNormPrediction(depId, med.MedId);
                    norm.MedList.Add(med); //תרופה נכנסת לתקן חדש 
                    list.Add(norm); //הכנסת תקן חדש לרשימת התקנים
                    lastNormId = norm.NormId; //קביעת מספר התקן האחרון שנכנס לרשימת התקנים
                }
            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }



    /*****************NormRequests*****************/
    //--------------------------------------------------------------------------------------------------
    // This method inserts a NormRequest to the NormRequests table 
    //--------------------------------------------------------------------------------------------------
    public bool InsertNormRequest(NormRequest nr)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        int reqId;
        int numEffected = 0;
        int MedListCount = nr.MedReqList.Count;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction(); //פתיחת טרנזקציה

        try
        {
            using (cmd1 = CreateUpdateInsertNormRequestCommandSP("spInsertNormRequest", con, nr)) //יצירת command
            {
                cmd1.Transaction = transaction; //הפעלת טרנזקציה על הcommand
                reqId = Convert.ToInt32(cmd1.ExecuteScalar()); //הרצת command
            }
            for (int i = 0; i < nr.MedReqList.Count; i++)
            {
                using (cmd2 = CreateInsertMedNormRequestCommandSP("spInsertMedNormRequest", con, reqId, nr.MedReqList[i]))//יצירת command
                {
                    cmd2.Transaction = transaction;//הפעלת טרנזקציה על הcommand
                    numEffected += cmd2.ExecuteNonQuery(); //הרצת command
                }
            }

            if (MedListCount == numEffected)// אם הכל הסתיים בהצלחה, נעשה commit
            {
                transaction.Commit();
                return true;
            }
            else //אם לא כל התרופות בהזמנה נשמרו במסד הנתונים, נעשה rollback 
            {
                transaction.Rollback(); //ביטול כל הפעולות הקודמות
                return false;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:" + sqlEx.Message);
            return false;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a NormRequest in the NormRequests table 
    //--------------------------------------------------------------------------------------------------
    public bool UpdateNormRequest(NormRequest nr)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        SqlCommand cmd3;
        int numEffected = 0;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction();

        try
        {
            using (cmd1 = CreateUpdateInsertNormRequestCommandSP("spUpdateNormRequest", con, nr))
            {
                cmd1.Transaction = transaction;
                numEffected = cmd1.ExecuteNonQuery();
            }
            if (numEffected != 0)
            {
                numEffected = 0;
                using (cmd2 = CreateDeleteMedNormRequestCommand("spDeleteMedsNormRequest", con, nr.ReqId))
                {
                    cmd2.Transaction = transaction;
                    numEffected = cmd2.ExecuteNonQuery();//מוחזר כמות התרופות שנמחקו מאותה הזמנה
                }
                if (numEffected != 0)
                {
                    for (int i = 0; i < nr.MedReqList.Count; i++)
                    {
                        using (cmd3 = CreateInsertMedNormRequestCommandSP("spInsertMedNormRequest", con, nr.ReqId, nr.MedReqList[i]))
                        {
                            cmd3.Transaction = transaction;
                            numEffected = cmd3.ExecuteNonQuery();
                        }
                        if (numEffected == 1)
                            numEffected = -1;
                        else
                            break;
                    }
                }
            }

            if (numEffected == -1)// אם הכל הסתיים בהצלחה, נעשה commit
            {
                transaction.Commit();
                return true;
            }
            else //אם לא כל 3 הפרוצדורות החזירו ערך שינוי, נעשה rollback 
            {
                transaction.Rollback();
                return false;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:" + sqlEx.Message);
            return false;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a Norm by NormRequest 
    //--------------------------------------------------------------------------------------------------
    public bool UpdateNormRequestManager(List<MedNorm> mn, NormRequest nr)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        SqlCommand cmd3;
        int numEffected = 0;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        SqlTransaction transaction = con.BeginTransaction();

        try
        {
            using (cmd1 = CreateUpdateInsertNormRequestCommandSP("spUpdateNormRequestManager", con, nr))
            {
                cmd1.Transaction = transaction;
                numEffected = cmd1.ExecuteNonQuery();
            }
            if (numEffected != 0)
            {
                numEffected = 0;
                Norm norm = new Norm(nr.NormId, 0, DateTime.Now);
                using (cmd2 = CreateUpdateInsertNormCommandSP("spUpdateNorm", con, norm))
                {
                    cmd2.Transaction = transaction;
                    numEffected = cmd2.ExecuteNonQuery();
                }
                if (numEffected != 0)
                {
                    for (int i = 0; i < mn.Count; i++)
                    {
                        using (cmd3 = CreateUpdateInsertMedNormCommandSP("spInsertUpdateMedNorm", con, nr.NormId, mn[i]))
                        {
                            cmd3.Transaction = transaction;
                            numEffected = cmd3.ExecuteNonQuery();
                        }
                        if (numEffected == 1)
                            numEffected = -1;
                        else
                            break;
                    }
                }
            }

            if (numEffected == -1)// אם הכל הסתיים בהצלחה, נעשה commit
            {
                transaction.Commit();
                return true;
            }
            else //אם לא כל 3 הפרוצדורות החזירו ערך שינוי, נעשה rollback 
            {
                transaction.Rollback();
                return false;
            }
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:" + sqlEx.Message);
            return false;
        }
        catch (Exception ex)
        {
            // אם התרחשה כל שגיאה, נבצע rollback
            transaction.Rollback();
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read NormRequests from the NormRequests table
    //--------------------------------------------------------------------------------------------------
    public List<NormRequest> ReadNormRequests()
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadCommandSP("spReadNormRequests", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<NormRequest> list = new List<NormRequest>();
            int lastReqId = 0;

            while (dataReader.Read())
            {
                NormRequest nr = new NormRequest();
                nr.ReqId = Convert.ToInt32(dataReader["reqId"]);
                nr.NormId = Convert.ToInt32(dataReader["normId"]);
                nr.DepId = Convert.ToInt32(dataReader["depId"]);
                nr.DepName = (dataReader["depName"]).ToString();
                nr.UserId = Convert.ToInt32(dataReader["userId"]);
                nr.FullName = (dataReader["fullName"]).ToString();
                nr.Position = (dataReader["position"]).ToString();
                nr.ReqDate = Convert.ToDateTime(dataReader["reqDate"]);

                if (nr.MedReqList == null) //במידה ואין תרופות בתקן, ניצור רשימה ריקה
                    nr.MedReqList = new List<MedNormRequest>();

                if (nr.ReqId == lastReqId) //בדיקה האם מדובר באותו תקן
                {
                    MedNormRequest medReq = new MedNormRequest();
                    medReq.MedId = Convert.ToInt32(dataReader["medId"]);
                    medReq.MedName = (dataReader["medName"]).ToString();
                    medReq.ReqQty = (float)(dataReader["reqQty"]);
                    medReq.NormQty = (float)(dataReader["normQty"]);
                    NormPredictions np = new NormPredictions();
                    medReq.PredQty = (int)np.MedNormPrediction(nr.DepId, medReq.MedId);
                    list[list.Count - 1].MedReqList.Add(medReq); //תרופה נכנסת לאותו תקן
                }
                else //הכנסת תרופה בתוך תקן חדש 
                {
                    MedNormRequest medReq = new MedNormRequest();
                    medReq.MedId = Convert.ToInt32(dataReader["medId"]);
                    medReq.MedName = (dataReader["medName"]).ToString();
                    medReq.ReqQty = (float)(dataReader["reqQty"]);
                    medReq.NormQty = (float)(dataReader["normQty"]);
                    NormPredictions np = new NormPredictions();
                    medReq.PredQty = (int)np.MedNormPrediction(nr.DepId, medReq.MedId);
                    nr.MedReqList.Add(medReq); //תרופה נכנסת לתקן חדש 
                    list.Add(nr); //הכנסת תקן חדש לרשימת התקנים
                    lastReqId = nr.ReqId; //קביעת מספר התקן האחרון שנכנס לרשימת התקנים
                }
            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read NormRequests from the NormRequests table
    //--------------------------------------------------------------------------------------------------
    public List<NormRequest> ReadDepNormRequests(int depId)
    {
        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadDepObjectCommandSP("spReadDepNormRequests", con, depId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<NormRequest> list = new List<NormRequest>();
            int lastReqId = 0;

            while (dataReader.Read())
            {
                NormRequest nr = new NormRequest();
                nr.ReqId = Convert.ToInt32(dataReader["reqId"]);
                nr.NormId = Convert.ToInt32(dataReader["normId"]);
                nr.DepId = Convert.ToInt32(dataReader["depId"]);
                nr.DepName = (dataReader["depName"]).ToString();
                nr.UserId = Convert.ToInt32(dataReader["userId"]);
                nr.FullName = (dataReader["fullName"]).ToString();
                nr.Position = (dataReader["position"]).ToString();
                nr.ReqDate = Convert.ToDateTime(dataReader["reqDate"]);

                if (nr.MedReqList == null) //במידה ואין תרופות בתקן, ניצור רשימה ריקה
                    nr.MedReqList = new List<MedNormRequest>();

                if (nr.ReqId == lastReqId) //בדיקה האם מדובר באותו תקן
                {
                    MedNormRequest medReq = new MedNormRequest();
                    medReq.MedId = Convert.ToInt32(dataReader["medId"]);
                    medReq.MedName = (dataReader["medName"]).ToString();
                    medReq.ReqQty = (float)(dataReader["reqQty"]);
                    medReq.NormQty = (float)(dataReader["normQty"]);
                    list[list.Count - 1].MedReqList.Add(medReq); //תרופה נכנסת לאותו תקן
                }
                else //הכנסת תרופה בתוך תקן חדש 
                {
                    MedNormRequest medReq = new MedNormRequest();
                    medReq.MedId = Convert.ToInt32(dataReader["medId"]);
                    medReq.MedName = (dataReader["medName"]).ToString();
                    medReq.ReqQty = (float)(dataReader["reqQty"]);
                    medReq.NormQty = (float)(dataReader["normQty"]);
                    nr.MedReqList.Add(medReq); //תרופה נכנסת לתקן חדש 
                    list.Add(nr); //הכנסת תקן חדש לרשימת התקנים
                    lastReqId = nr.ReqId; //קביעת מספר התקן האחרון שנכנס לרשימת התקנים
                }
            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read NormRequests from the NormRequests table
    //--------------------------------------------------------------------------------------------------
    public List<NormRequest> ReadDepNormRequestsPrediction(int depId)
    {
        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateReadDepObjectCommandSP("spReadDepNormRequests", con, depId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<NormRequest> list = new List<NormRequest>();
            int lastReqId = 0;

            while (dataReader.Read())
            {
                NormRequest nr = new NormRequest();
                nr.ReqId = Convert.ToInt32(dataReader["reqId"]);
                nr.NormId = Convert.ToInt32(dataReader["normId"]);
                nr.DepId = Convert.ToInt32(dataReader["depId"]);
                nr.DepName = (dataReader["depName"]).ToString();
                nr.UserId = Convert.ToInt32(dataReader["userId"]);
                nr.FullName = (dataReader["fullName"]).ToString();
                nr.Position = (dataReader["position"]).ToString();
                nr.ReqDate = Convert.ToDateTime(dataReader["reqDate"]);

                if (nr.MedReqList == null) //במידה ואין תרופות בתקן, ניצור רשימה ריקה
                    nr.MedReqList = new List<MedNormRequest>();

                if (nr.ReqId == lastReqId) //בדיקה האם מדובר באותו תקן
                {
                    MedNormRequest medReq = new MedNormRequest();
                    medReq.MedId = Convert.ToInt32(dataReader["medId"]);
                    medReq.MedName = (dataReader["medName"]).ToString();
                    medReq.ReqQty = (float)(dataReader["reqQty"]);
                    medReq.NormQty = (float)(dataReader["normQty"]);
                    NormPredictions np = new NormPredictions();
                    medReq.PredQty = (int)np.MedNormPrediction(depId, medReq.MedId);
                    list[list.Count - 1].MedReqList.Add(medReq); //תרופה נכנסת לאותו תקן
                }
                else //הכנסת תרופה בתוך תקן חדש 
                {
                    MedNormRequest medReq = new MedNormRequest();
                    medReq.MedId = Convert.ToInt32(dataReader["medId"]);
                    medReq.MedName = (dataReader["medName"]).ToString();
                    medReq.ReqQty = (float)(dataReader["reqQty"]);
                    medReq.NormQty = (float)(dataReader["normQty"]);
                    NormPredictions np = new NormPredictions();
                    medReq.PredQty = (int)np.MedNormPrediction(depId, medReq.MedId);
                    nr.MedReqList.Add(medReq); //תרופה נכנסת לתקן חדש 
                    list.Add(nr); //הכנסת תקן חדש לרשימת התקנים
                    lastReqId = nr.ReqId; //קביעת מספר התקן האחרון שנכנס לרשימת התקנים
                }
            }
            return list;
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the Update/Insert SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateInsertNormRequestCommandSP(String spName, SqlConnection con, NormRequest nr)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@reqId", nr.ReqId);
        cmd.Parameters.AddWithValue("@normId", nr.NormId);
        cmd.Parameters.AddWithValue("@userId", nr.UserId);

        return cmd;
    }

    //---------------------------------------------------------------------------------
    // Create the Update/Insert SqlCommand for norm
    //---------------------------------------------------------------------------------
    private SqlCommand CreateInsertMedNormRequestCommandSP(String spName, SqlConnection con, int reqId, MedNormRequest medNormReq)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@reqId", reqId);
        cmd.Parameters.AddWithValue("@medId", medNormReq.MedId);
        cmd.Parameters.AddWithValue("@reqQty", medNormReq.ReqQty);

        return cmd;
    }

    //--------------------------------------------------------------------
    // Create the DeleteMedNorm SqlCommand
    //--------------------------------------------------------------------
    private SqlCommand CreateDeleteMedNormRequestCommand(String spName, SqlConnection con, int reqId)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command, can also be stored procedure

        cmd.Parameters.AddWithValue("@reqId", reqId);

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update NormRequest do complete status in the NormRequests table 
    //--------------------------------------------------------------------------------------------------
    public void UpdateCompleteReqs(ILogger<TimedHostedService> _logger)
    {
        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateRequestsCompleteCommand("spUpdateNormRequestToComplete", con);

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            Console.WriteLine("Change Time2: " + DateTime.Now + "Num Effected2: " + numEffected);
        }
        catch (Exception ex)
        {
            // write to log
            _logger.LogError(ex.Message);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the update request into complete status SqlCommand 
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateRequestsCompleteCommand(String spName, SqlConnection con)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 80;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Update a NormRequest in the NormRequests table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateNormRequestComplete(int reqId)
    {
        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("myProjDB"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        cmd = CreateUpdateNormRequestCompleteCommandSP("spUpdateNormRequestManager", con, reqId);

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
                // write to log
                throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }
    }

    //---------------------------------------------------------------------------------
    // Create the UpdateComplete SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdateNormRequestCompleteCommandSP(String spName, SqlConnection con, int reqId)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@reqId", reqId);
        cmd.Parameters.AddWithValue("@normId", 0);
        cmd.Parameters.AddWithValue("@userId", 0);

        return cmd;
    }


}