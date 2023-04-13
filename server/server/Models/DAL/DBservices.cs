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
    public bool InsertUsage(Usage use)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        int usageId;

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
                using (cmd2 = CreateInsertMedUsageCommandSP("spInsertMedUsages", con, usageId, use.MedList[i]))
                {
                    cmd2.Transaction = transaction;
                    use.MedList[i].MedId = Convert.ToInt32(cmd2.ExecuteScalar());
                }
            }

            // אם הכל הסתיים בהצלחה, נעשה commit
            transaction.Commit();
            return true;
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

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

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
    public Object ReadDepMedsUsage(int depId)
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
                    medId = Convert.ToInt32(dataReader["medId"]),
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
        int numEffected = 1;

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

            // אם הכל הסתיים בהצלחה, נעשה commit
            transaction.Commit();
            return numEffected;
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
                numEffected += cmd1.ExecuteNonQuery();
            }
            for (int i = 0; i < depList.Count; i++)
            {
                using (cmd2 = CreateUpdateInsertDepRequestCommandSP("spInsertDepRequest", con, mr.ReqId, depList[i]))
                {
                    cmd2.Transaction = transaction;
                    numEffected += cmd2.ExecuteNonQuery();
                }
            }

            // אם הכל הסתיים בהצלחה, נעשה commit
            transaction.Commit();
            return numEffected;
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
    // 3 methods bellow: Read MedRequestsObjects by depId and Create read command 
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
            Console.WriteLine("Change Time: " + DateTime.Now+ "Num Effected: "+ numEffected);
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

        cmd.CommandTimeout = 60;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        return cmd;
    }

    //--------------------------------------------------------------------------------------------------
    // Read MedRequests Details פונקציית עזר
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

            List<string> depTypes= new List<string>();

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


    /*****************Returns*****************/

    //--------------------------------------------------------------------------------------------------
    // This method insert a MedReturn to the MedReturns table 
    //--------------------------------------------------------------------------------------------------
    public int InsertMedReturn(Return mr)
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
    public int UpdateMedReturn(Return mr)
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
    private SqlCommand CreateUpdateInsertMedReturnCommandSP(String spName, SqlConnection con, Return mr)
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
    public List<Return> ReadMedReturns()
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

            List<Return> list = new List<Return>();

            while (dataReader.Read())
            {
                Return mr = new Return();
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
    public bool InsertPushOrder(PushOrder po)
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        int orderId;

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
            using (cmd1 = CreateUpdateInsertPushOrderCommandSP("spInsertPushOrder", con, po))
            {
                cmd1.Transaction = transaction;
                orderId = Convert.ToInt32(cmd1.ExecuteScalar());
            }
            for (int i = 0; i < po.MedList.Count; i++)
            {
                using (cmd2 = CreateUpdateInsertMedOrderCommandSP("spInsertPushMedOrders", con, orderId, po.MedList[i]))
                {
                    cmd2.Transaction = transaction;
                    cmd2.ExecuteNonQuery();
                }
            }

            // אם הכל הסתיים בהצלחה, נעשה commit
            transaction.Commit();
            return true;
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
            if (numEffected == 1)
                return true;
            else
               return false;

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
                if (po.MedList == null)
                    po.MedList = new List<MedOrder>();

                if (po.OrderId == lastOrderId)
                {
                    if (dataReader["MO.PushId"] != DBNull.Value)
                    {
                        MedOrder mo = new MedOrder();  
                        mo.MedId = Convert.ToInt32(dataReader["MedId"]);
                        mo.PoQty = (float)(dataReader["PoQty"]);
                        mo.SupQty = (float)(dataReader["SupQty"]);
                        mo.MazNum = (dataReader["MazNum"]).ToString();
                        list[list.Count - 1].MedList.Add(mo);
                    }
                }
                else
                {
                    if (dataReader["MO.PushId"] != DBNull.Value)
                    {
                        MedOrder mo = new MedOrder();
                        mo.MedId = Convert.ToInt32(dataReader["MedId"]);
                        mo.PoQty = (float)(dataReader["PoQty"]);
                        mo.SupQty = (float)(dataReader["SupQty"]);
                        mo.MazNum = (dataReader["MazNum"]).ToString();
                        po.MedList.Add(mo);
                    }
                    list.Add(po);
                    lastOrderId = po.OrderId;
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
    public Object ReadPushOrders(int depId)
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
            using (cmd1 = CreateInsertPullOrderCommandSP("spInsertPullOrder", con, po))
            {
                cmd1.Transaction = transaction;
                orderId = Convert.ToInt32(cmd1.ExecuteScalar());
            }
            for (int i = 0; i < po.MedList.Count; i++)
            {
                using (cmd2 = CreateUpdateInsertMedOrderCommandSP("spInsertPullMedOrders", con, orderId, po.MedList[i]))
                {
                    cmd2.Transaction = transaction;
                    int numEffected = cmd2.ExecuteNonQuery();
                }
            }

            // אם הכל הסתיים בהצלחה, נעשה commit
            transaction.Commit();
            return true;
        }
        catch (SqlException sqlEx)
        {
            // אם התרחשה שגיאת sql, נבצע rollback
            transaction.Rollback();
            Console.WriteLine("SqlException:"+ sqlEx.Message);
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
            using (cmd1 = CreateUpdatePullOrderCommandSP("spUpdatePullOrderNurse", con, po))
            {
                cmd1.Transaction = transaction;
                cmd1.ExecuteNonQuery();
            }
            for (int i = 0; i < po.MedList.Count; i++)
            {
                using (cmd2 = CreateUpdateInsertMedOrderCommandSP("spInsertPullMedOrders", con, po.OrderId, po.MedList[i]))
                {
                    cmd2.Transaction = transaction;
                    cmd2.ExecuteNonQuery();
                }
            }

            // אם הכל הסתיים בהצלחה, נעשה commit
            transaction.Commit();
            return true;
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
    // Create the Insert SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateInsertPullOrderCommandSP(String spName, SqlConnection con, PullOrder po)
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
    // Create the Update SqlCommand
    //---------------------------------------------------------------------------------
    private SqlCommand CreateUpdatePullOrderCommandSP(String spName, SqlConnection con, PullOrder po)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@pullId", po.OrderId);
        cmd.Parameters.AddWithValue("@nUser", po.NUser);

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
                if (po.MedList == null)
                    po.MedList = new List<MedOrder>();

                if (po.OrderId == lastOrderId)
                {
                    if (dataReader["MO.PullId"] != DBNull.Value)
                    {
                        MedOrder mo = new MedOrder();
                        mo.MedId = Convert.ToInt32(dataReader["MedId"]);
                        mo.PoQty = (float)(dataReader["PoQty"]);
                        mo.SupQty = (float)(dataReader["SupQty"]);
                        mo.MazNum = (dataReader["MazNum"]).ToString();
                        list[list.Count-1].MedList.Add(mo);
                    }
                }
                else
                {
                    if (dataReader["MO.PullId"] != DBNull.Value)
                    {
                        MedOrder mo = new MedOrder();
                        mo.MedId = Convert.ToInt32(dataReader["MedId"]);
                        mo.PoQty = (float)(dataReader["PoQty"]);
                        mo.SupQty = (float)(dataReader["SupQty"]);
                        mo.MazNum = (dataReader["MazNum"]).ToString();
                        po.MedList.Add(mo);
                    }
                    list.Add(po);
                    lastOrderId = po.OrderId;
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
    public Object ReadPullOrders(int depId)
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



    /*****************Global for PullOrders and PushOrders*****************/

    //--------------------------------------------------------------------------------------------------
    // This method Read OrderDetails from the Push/PullOrders and MedPush/PullOrders tables
    //--------------------------------------------------------------------------------------------------
    public Object ReadOrderDetails(int depId, int orderId, int type)
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
            cmd = CreateReadOrdersObjectCommandSP("spReadPushOrderDetails", con, depId, orderId);
        else // if the order type is pull 
            cmd = CreateReadOrdersObjectCommandSP("spReadPullOrderDetails", con, depId, orderId);

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
    private SqlCommand CreateReadOrdersObjectCommandSP(String spName, SqlConnection con, int depId, int orderId)
    {
        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = spName;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.StoredProcedure; // the type of the command

        cmd.Parameters.AddWithValue("@depId", depId);
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



    /*****************Prediction*****************/
    //--------------------------------------------------------------------------------------------------
    // This method Read Predictions from the Predictions table
    //--------------------------------------------------------------------------------------------------
    public List<Prediction> ReadPrediction()
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

        cmd = CreateReadCommandSP("spReadPredictions", con);

        try
        {
            SqlDataReader dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            List<Prediction> list = new List<Prediction>();

            while (dataReader.Read())
            {
                Prediction p = new Prediction();
                p.UsageOneMonthAgo = Convert.ToDouble(dataReader["UsageOneMonthAgo"]);
                p.UsageTwoMonthAgo = Convert.ToDouble(dataReader["UsageTwoMonthAgo"]);
                p.UsageOneYearAgo = Convert.ToDouble(dataReader["UsageOneYearAgo"]);
                p.TotalReqQty = Convert.ToDouble(dataReader["TotalReqQty"]);
                p.ThisMonth = dataReader["ThisMonth"].ToString();
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


}