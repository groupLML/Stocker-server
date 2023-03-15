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

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

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

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

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
        cmd.Parameters.AddWithValue("@password", user.Password);
        cmd.Parameters.AddWithValue("@phone", user.Phone);
        cmd.Parameters.AddWithValue("@position", user.Position);
        cmd.Parameters.AddWithValue("@jobType", user.JobType);
        cmd.Parameters.AddWithValue("@depId", user.DepId);
        cmd.Parameters.AddWithValue("@isActive", user.IsActive);

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read user from the users table
    //--------------------------------------------------------------------------------------------------
    public List<User> ReadUsers()
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



    /*****************Norms*****************/

    //--------------------------------------------------------------------------------------------------
    // This method inserts a Norm to the Norms table 
    //--------------------------------------------------------------------------------------------------
    public int InsertNorm(Norm norm)
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

        cmd = CreateUpdateInsertNormCommandSP("spInsertNorm", con, norm);    // create the command

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
    // This method Update a Norm in the Norms table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateNorm(Norm norm)
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

        cmd = CreateUpdateInsertNormCommandSP("spUpdateNorm", con, norm);

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
    private SqlCommand CreateUpdateInsertNormCommandSP(String spName, SqlConnection con, Norm norm)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@normId", norm.NormId);
        cmd.Parameters.AddWithValue("@depId", norm.DepId);
        cmd.Parameters.AddWithValue("@lastUpdate", norm.LastUpdate);
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

            while (dataReader.Read())
            {
                Norm norm = new Norm();
                norm.NormId = Convert.ToInt32(dataReader["NormId"]);
                norm.DepId = Convert.ToInt32(dataReader["DepId"]);
                norm.LastUpdate = Convert.ToDateTime(dataReader["LastUpdate"]);
                list.Add(norm);
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



    /*****************MedNorms*****************/

    //--------------------------------------------------------------------------------------------------
    // This method inserts a MedNorm to the MedNorms table 
    //--------------------------------------------------------------------------------------------------
    public int InsertMedNorm(MedNorm mn)
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

        cmd = CreateUpdateInsertMedNormCommandSP("spInsertMedNorm", con, mn);    // create the command

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
    // This method Update a MedNorm in the MedNorms table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateMedNorm(MedNorm mn)
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

        cmd = CreateUpdateInsertMedNormCommandSP("spUpdateMedNorm", con, mn);

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
    private SqlCommand CreateUpdateInsertMedNormCommandSP(String spName, SqlConnection con, MedNorm mn)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@normId", mn.NormId);
        cmd.Parameters.AddWithValue("@medId", mn.MedId);
        cmd.Parameters.AddWithValue("@normQty", mn.NormQty);
        cmd.Parameters.AddWithValue("@mazNum", mn.MazNum);
        cmd.Parameters.AddWithValue("@inNorm", mn.InNorm);

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read MedNorms from the MedNorms table
    //--------------------------------------------------------------------------------------------------
    public List<MedNorm> ReadMedNorms()
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

        cmd = CreateReadCommandSP("spReadMedNorms", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<MedNorm> list = new List<MedNorm>();

            while (dataReader.Read())
            {
                MedNorm mn = new MedNorm();
                mn.NormId = Convert.ToInt32(dataReader["NormId"]);
                mn.MedId = Convert.ToInt32(dataReader["MedId"]);
                mn.NormQty = (float)Convert.ToSingle(dataReader["NormQty"]);
                mn.MazNum = dataReader["MazNum"].ToString();
                mn.InNorm = Convert.ToBoolean(dataReader["InNorm"]);
                list.Add(mn);
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
    public Object ReadDepMedNorms(int depId)
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

        cmd = CreateReadDepObjectCommandSP("spReadDepMedNorms", con, depId);

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
                    normQty = Convert.ToInt32(dataReader["normQty"])

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




    /*****************NormRequests*****************/

    //--------------------------------------------------------------------------------------------------
    // This method inserts a NormRequest to the NormRequests table 
    //--------------------------------------------------------------------------------------------------
    public int InsertNormRequest(NormRequest nr)
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

        cmd = CreateUpdateInsertNormRequestCommandSP("spInsertNormRequest", con, nr);    // create the command

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
    // This method Update a NormRequest in the NormRequests table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateNormRequest(NormRequest nr)
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

        cmd = CreateUpdateInsertNormRequestCommandSP("spUpdateNormRequest", con, nr);

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
    private SqlCommand CreateUpdateInsertNormRequestCommandSP(String spName, SqlConnection con, NormRequest nr)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@normId", nr.NormId);
        cmd.Parameters.AddWithValue("@medId", nr.MedId);
        cmd.Parameters.AddWithValue("@ncrDate", nr.NcrDate);
        cmd.Parameters.AddWithValue("@userId", nr.UserId);
        cmd.Parameters.AddWithValue("@ncrQty", nr.NcrQty);

        return cmd;
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

            while (dataReader.Read())
            {
                NormRequest nr = new NormRequest();
                nr.NormId = Convert.ToInt32(dataReader["NormId"]);
                nr.MedId = Convert.ToInt32(dataReader["MedId"]);
                nr.NcrDate = Convert.ToDateTime(dataReader["NcrDate"]);
                nr.UserId = Convert.ToInt32(dataReader["UserId"]);
                nr.NcrQty = (float)Convert.ToSingle(dataReader["NcrQty"]);
                list.Add(nr);

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




    /*****************Usages*****************/

    //--------------------------------------------------------------------------------------------------
    // This method inserts a Usage to the Usages table 
    //--------------------------------------------------------------------------------------------------
    public int InsertUsage(Usage use)
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

        cmd = CreateUpdateInsertUsageCommandSP("spInsertUsage", con, use);    // create the command

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
    // This method Update a Usage in the Usages table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateUsage(Usage use)
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

        cmd = CreateUpdateInsertUsageCommandSP("spUpdateUsage", con, use);

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
    private SqlCommand CreateUpdateInsertUsageCommandSP(String spName, SqlConnection con, Usage use)
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

            while (dataReader.Read())
            {
                Usage use = new Usage();
                use.UsageId = Convert.ToInt32(dataReader["UsageId"]);
                use.DepId = Convert.ToInt32(dataReader["DepId"]);
                use.ReportNum = dataReader["ReportNum"].ToString();
                use.LastUpdate = Convert.ToDateTime(dataReader["LastUpdate"]);
                list.Add(use);
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




    /*****************MedUsages*****************/

    //--------------------------------------------------------------------------------------------------
    // This method inserts a MedUsage to the MedUsages table 
    //--------------------------------------------------------------------------------------------------
    public int InsertMedUsage(MedUsage mu)
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

        cmd = CreateUpdateInsertMedUsageCommandSP("spInsertMedUsage", con, mu);    // create the command

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
    // This method Update a MedUsage in the MedUsages table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateMedUsage(MedUsage mu)
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

        cmd = CreateUpdateInsertMedUsageCommandSP("spUpdateMedUsages", con, mu);

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
    private SqlCommand CreateUpdateInsertMedUsageCommandSP(String spName, SqlConnection con, MedUsage mu)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@medId", mu.MedId);
        cmd.Parameters.AddWithValue("@usageId", mu.UsageId);
        cmd.Parameters.AddWithValue("@useQty", mu.UseQty);
        cmd.Parameters.AddWithValue("@chamNum", mu.ChamNum);

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // This method Read MedUsages from the MedUsages table
    //--------------------------------------------------------------------------------------------------
    public List<MedUsage> ReadMedUsages()
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

        cmd = CreateReadCommandSP("spReadMedUsages", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<MedUsage> list = new List<MedUsage>();

            while (dataReader.Read())
            {
                MedUsage mu = new MedUsage();
                mu.MedId = Convert.ToInt32(dataReader["MedId"]);
                mu.UsageId = Convert.ToInt32(dataReader["UsageId"]);
                mu.UseQty = (float)Convert.ToSingle(dataReader["UseQty"]);
                mu.ChamNum = dataReader["ChamNumm"].ToString();
                list.Add(mu);

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
    public Object ReadDepMedUsages(int depId)
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

        cmd = CreateReadDepObjectCommandSP("spReadDepMedUsagesManager", con, depId);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Object> listObj = new List<Object>();

            while (dataReader.Read())
            {

                listObj.Add(new
                {
                    medId= Convert.ToInt32(dataReader["medId"]),
                    mazNum = dataReader["mazNum"].ToString(),
                    genName = dataReader["genName"].ToString(),
                    comName = dataReader["comName"].ToString(),
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

        cmd = CreateUpdateInsertStockCommandSP("spInsertToStock", con, stock);    // create the command

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
    public int UpdateStock(Stock stock)
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
    // This method Read Stocks from the Stocks table
    //--------------------------------------------------------------------------------------------------
    public List<Stock> ReadStocks()
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

            List<Stock> list = new List<Stock>();

            while (dataReader.Read())
            {
                Stock stock = new Stock();
                stock.StcId = Convert.ToInt32(dataReader["StcId"]);
                stock.MedId = Convert.ToInt32(dataReader["MedId"]);
                stock.DepId = Convert.ToInt32(dataReader["DepId"]);
                stock.StcQty = (float)Convert.ToSingle(dataReader["StcQty"]);
                stock.EntryDate = Convert.ToDateTime(dataReader["EntryDate"]);
                list.Add(stock);

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
    // This method Read Dep's Stocks from the Stocks table by depId
    //--------------------------------------------------------------------------------------------------
    public Object ReadDepStocks(int depId)
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
                    genName = dataReader["genName"].ToString(),
                    comName = dataReader["comName"].ToString(),
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

        cmd = CreateUpdateInsertMessageCommandSP("spInsertMessage", con,msg);    // create the command

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
    public List<Message> ReadMessages()
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

            List<Message> list = new List<Message>();

            while (dataReader.Read())
            {
                Message msg = new Message();
                msg.MsgId = Convert.ToInt32(dataReader["NsgId"]);
                msg.UserId = Convert.ToInt32(dataReader["UserId"]);
                msg.Msg = dataReader["Msg"].ToString();
                msg.MsgDate = Convert.ToDateTime(dataReader["MsgDate"]);
                list.Add(msg);
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



    /*****************MedRequests*****************/

    //--------------------------------------------------------------------------------------------------
    // This method insert a MedRequest to the MedRequests table 
    //--------------------------------------------------------------------------------------------------
    public int InsertMedRequest(MedRequest mr)
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

        cmd = CreateUpdateInsertMedRequestCommandSP("spInsertMedRequest", con, mr);    // create the command

        try
        {
            int reqId=Convert.ToInt32(cmd.ExecuteScalar()); 
            return reqId;
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
    // This method Update a MedRequest in the MedRequests table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateMedRequest(MedRequest mr)
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

        cmd = CreateUpdateInsertMedRequestCommandSP("spUpdateMedRequest", con, mr);

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

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

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
                if(!dataReader.IsDBNull(dataReader.GetOrdinal("AUser")))
                { 
                    mr.AUser = Convert.ToInt32(dataReader["AUser"]);
                }
                mr.CDep = Convert.ToInt32(dataReader["CDep"]);
                if (!dataReader.IsDBNull(dataReader.GetOrdinal("ADep")))
                {
                    mr.ADep = Convert.ToInt32(dataReader["ADep"]); ;
                }
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
    // 2 methods bellow: Read MedRequestsObjects by depId and Create read command 
    //--------------------------------------------------------------------------------------------------
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
                    reqStatus = Convert.ToChar(dataReader["reqStatus"]),
                    reqQty = (float)Convert.ToSingle(dataReader["reqQty"]),
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
    // 2 methods bellow: insert DepRequests and Create insert command 
    //--------------------------------------------------------------------------------------------------
    public int InsertDepRequest(int reqId, int cDep, int aDep)
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

        cmd = CreateInsertDepRequestCommandSP("spInsertDepRequest", con, reqId, cDep, aDep);   // create the command

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
    private SqlCommand CreateInsertDepRequestCommandSP(String spName, SqlConnection con, int reqId, int cDep, int aDep)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@reqId", reqId);
        cmd.Parameters.AddWithValue("@cDep", cDep);
        cmd.Parameters.AddWithValue("@reqDep", aDep);

        return cmd;

    }

    //--------------------------------------------------------------------
    // This method Delete DepRequests by reqId
    //--------------------------------------------------------------------
    public int DeleteDepRequests(int reqId)
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

        cmd = createDeleteDepReqCommand("spDeleteDepRequests", con, reqId);

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
    // Create the Delete DepRequests SqlCommand 
    //--------------------------------------------------------------------
    private SqlCommand createDeleteDepReqCommand(String spName, SqlConnection con, int reqId)
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
    // This method Read DepRequestsObjects from the DepRequests table by depId
    //--------------------------------------------------------------------------------------------------
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

                listObj.Add(new
                {
                    depName = dataReader["depName"].ToString(),
                    cNurseName = dataReader["cNurseName"].ToString(),
                    reqDate = Convert.ToDateTime(dataReader["reqDate"]),
                    medName = dataReader["medName"].ToString(),
                    reqQty = Convert.ToInt32(dataReader["reqQty"]),
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




    /*****************MedReturns*****************/

    //--------------------------------------------------------------------------------------------------
    // This method insert a MedReturn to the MedReturns table 
    //--------------------------------------------------------------------------------------------------
    public int InsertMedReturn(MedReturn mr)
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

        cmd = CreateUpdateInsertMedReturnCommandSP("spInsertMedReturn", con, mr);    // create the command

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
    // This method Update a MedReturn in the MedReturns table 
    //--------------------------------------------------------------------------------------------------
    public int UpdateMedReturn(MedReturn mr)
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

        cmd = CreateUpdateInsertMedReturnCommandSP("spUpdateMedReturn", con, mr);

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
    private SqlCommand CreateUpdateInsertMedReturnCommandSP(String spName, SqlConnection con, MedReturn mr)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@medId", mr.MedId);
        cmd.Parameters.AddWithValue("@depId", mr.DepId);
        cmd.Parameters.AddWithValue("@rtnDate", mr.RtnDate);
        cmd.Parameters.AddWithValue("@userId", mr.UserId);
        cmd.Parameters.AddWithValue("@rtnQty", mr.RtnQty);
        cmd.Parameters.AddWithValue("@reason", mr.Reason);

        return cmd;

    }

    //--------------------------------------------------------------------------------------------------
    // This method Read MedReturns from the MedReturns table
    //--------------------------------------------------------------------------------------------------
    public List<MedReturn> ReadMedReturns()
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

        cmd = CreateReadCommandSP("spReadMedReturns", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<MedReturn> list = new List<MedReturn>();

            while (dataReader.Read())
            {
                MedReturn mr = new MedReturn();
                mr.MedId = Convert.ToInt32(dataReader["MedId"]);
                mr.DepId = Convert.ToInt32(dataReader["DepId"]);
                mr.RtnDate = Convert.ToDateTime(dataReader["RtnDate"]);
                mr.UserId = Convert.ToInt32(dataReader["UserId"]);
                mr.RtnQty = (float)Convert.ToSingle(dataReader["RtnQty"]);
                mr.Reason = dataReader["Reason"].ToString(); ;
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




    /*****************PushOrders*****************/

    //--------------------------------------------------------------------------------------------------
    // This method insert a PushOrder to the PushOrders table 
    //--------------------------------------------------------------------------------------------------
    public int InsertPushOrder(PushOrder po)
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

        cmd = CreateUpdateInsertPushOrderCommandSP("spInsertPushOrder", con, po);    // create the command

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
    // This method Update a PushOrder in the PushOrders table 
    //--------------------------------------------------------------------------------------------------
    public int UpdatePushOrder(PushOrder po)
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

        cmd = CreateUpdateInsertPushOrderCommandSP("spUpdatePushOrder", con, po);

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
    private SqlCommand CreateUpdateInsertPushOrderCommandSP(String spName, SqlConnection con, PushOrder po)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@pushId", po.PushId);
        cmd.Parameters.AddWithValue("@pUser", po.PUser);
        cmd.Parameters.AddWithValue("@depId", po.DepId);
        cmd.Parameters.AddWithValue("@reportNum", po.ReportNum);
        cmd.Parameters.AddWithValue("@pushStatus", po.PushStatus);
        cmd.Parameters.AddWithValue("@pushDate", po.PushDate);
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

            while (dataReader.Read())
            {
                PushOrder po = new PushOrder();
                po.PushId = Convert.ToInt32(dataReader["PushId"]);
                po.PUser = Convert.ToInt32(dataReader["PUser"]);
                po.DepId = Convert.ToInt32(dataReader["DepId"]);
                po.ReportNum = dataReader["ReportNum"].ToString();
                po.PushStatus = Convert.ToChar(dataReader["PushStatus"]);
                po.PushDate = Convert.ToDateTime(dataReader["PushDate"]);
                po.LastUpdate = Convert.ToDateTime(dataReader["LastUpdate"]);
                list.Add(po);
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




    /*****************PullOrders*****************/

    //--------------------------------------------------------------------------------------------------
    // This method insert a PullOrder to the PullOrders table 
    //--------------------------------------------------------------------------------------------------
    public int InsertPullOrder(PullOrder po)
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

        cmd = CreateUpdateInsertPullOrderCommandSP("spInsertPullOrder", con, po);    // create the command

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
    public int UpdatePullOrder(PullOrder po)
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

        cmd = CreateUpdateInsertPullOrderCommandSP("spUpdatePullOrder", con, po);

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
    private SqlCommand CreateUpdateInsertPullOrderCommandSP(String spName, SqlConnection con, PullOrder po)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@pullId", po.PullId);
        cmd.Parameters.AddWithValue("@pUser", po.PUser);
        cmd.Parameters.AddWithValue("@nUser", po.NUser);
        cmd.Parameters.AddWithValue("@depId", po.DepId);
        cmd.Parameters.AddWithValue("@reportNum", po.ReportNum);
        cmd.Parameters.AddWithValue("@pullStatus", po.PullStatus);
        cmd.Parameters.AddWithValue("@pullDate", po.PullDate);
        cmd.Parameters.AddWithValue("@lastUpdate", po.LastUpdate);

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

            while (dataReader.Read())
            {
                PullOrder po = new PullOrder();
                po.PullId = Convert.ToInt32(dataReader["PullId"]);
                po.PUser = Convert.ToInt32(dataReader["PUser"]);
                po.NUser = Convert.ToInt32(dataReader["NUser"]);
                po.DepId = Convert.ToInt32(dataReader["DepId"]);
                po.ReportNum = dataReader["ReportNum"].ToString();
                po.PullStatus = Convert.ToChar(dataReader["PullStatus"]);
                po.PullDate = Convert.ToDateTime(dataReader["PullDate"]);
                po.LastUpdate = Convert.ToDateTime(dataReader["LastUpdate"]);
                list.Add(po);
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




    /*****************PushMedOrders*****************/

    //--------------------------------------------------------------------------------------------------
    // This method insert a PushMedOrder to the PushMedOrders table 
    //--------------------------------------------------------------------------------------------------
    public int InsertPushMedOrder(PushMedOrder pmo)
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

        cmd = CreateUpdateInsertPushMedOrderCommandSP("spInsertPushMedOrder", con, pmo);    // create the command

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
    // This method Update a PushMedOrder in the PushMedOrders table 
    //--------------------------------------------------------------------------------------------------
    public int UpdatePushMedOrder(PushMedOrder pmo)
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

        cmd = CreateUpdateInsertPushMedOrderCommandSP("spUpdatePushMedOrder", con, pmo);

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
    private SqlCommand CreateUpdateInsertPushMedOrderCommandSP(String spName, SqlConnection con, PushMedOrder pmo)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@pushId", pmo.PushId);
        cmd.Parameters.AddWithValue("@medId", pmo.MedId);
        cmd.Parameters.AddWithValue("@poQty", pmo.PoQty);
        cmd.Parameters.AddWithValue("@supQty", pmo.SupQty);
        cmd.Parameters.AddWithValue("@mazNum", pmo.MazNum);

        return cmd;

    }

    //--------------------------------------------------------------------------------------------------
    // This method Read PushMedOrders from the PushMedOrders table
    //--------------------------------------------------------------------------------------------------
    public List<PushMedOrder> ReadPushMedOrders()
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

        cmd = CreateReadCommandSP("spReadPushMedOrders", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<PushMedOrder> list = new List<PushMedOrder>();

            while (dataReader.Read())
            {
                PushMedOrder pmo = new PushMedOrder();
                pmo.PushId = Convert.ToInt32(dataReader["PushId"]);
                pmo.MedId = Convert.ToInt32(dataReader["MedId"]);
                pmo.PoQty = (float)Convert.ToSingle(dataReader["PoQty"]);
                pmo.SupQty = (float)Convert.ToSingle(dataReader["SupQty"]);
                pmo.MazNum = dataReader["MazNum"].ToString(); ;
                list.Add(pmo);
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




    /*****************PullMedOrders*****************/

    //--------------------------------------------------------------------------------------------------
    // This method insert a PullMedOrder to the PullMedOrders table 
    //--------------------------------------------------------------------------------------------------
    public int InsertPullMedOrder(PullMedOrder pmo)
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

        cmd = CreateUpdateInsertPullMedOrderCommandSP("spInsertPullMedOrder", con, pmo);    // create the command

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
    // This method Update a PullMedOrder in the PullMedOrders table 
    //--------------------------------------------------------------------------------------------------
    public int UpdatePullMedOrder(PullMedOrder pmo)
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

        cmd = CreateUpdateInsertPullMedOrderCommandSP("spUpdatePullMedOrder", con, pmo);

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
    private SqlCommand CreateUpdateInsertPullMedOrderCommandSP(String spName, SqlConnection con, PullMedOrder pmo)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@pullId", pmo.PullId);
        cmd.Parameters.AddWithValue("@medId", pmo.MedId);
        cmd.Parameters.AddWithValue("@poQty", pmo.PoQty);
        cmd.Parameters.AddWithValue("@supQty", pmo.SupQty);
        cmd.Parameters.AddWithValue("@mazNum", pmo.MazNum);

        return cmd;

    }

    //--------------------------------------------------------------------------------------------------
    // This method Read PullMedOrders from the PullMedOrders table
    //--------------------------------------------------------------------------------------------------
    public List<PullMedOrder> ReadPullMedOrders()
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

        cmd = CreateReadCommandSP("spReadPullMedOrders", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<PullMedOrder> list = new List<PullMedOrder>();

            while (dataReader.Read())
            {
                PullMedOrder pmo = new PullMedOrder();
                pmo.PullId = Convert.ToInt32(dataReader["PullId"]);
                pmo.MedId = Convert.ToInt32(dataReader["MedId"]);
                pmo.PoQty = (float)Convert.ToSingle(dataReader["PoQty"]);
                pmo.SupQty = (float)Convert.ToSingle(dataReader["SupQty"]);
                pmo.MazNum = dataReader["MazNum"].ToString(); ;
                list.Add(pmo);
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




}