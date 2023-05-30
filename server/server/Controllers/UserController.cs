﻿using server.Models;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;
using System.Diagnostics;
using System.Net.Mail;
using System.Net;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        // GET: api/<UserController>
        [HttpGet]
        public IEnumerable<User> Get()
        {
            User user = new User();
            return user.Read();
        }

        // GET: api/<UserController>
        [HttpGet("GetUsers")]
        public Object GetUsers()
        {
            User user = new User();
            return user.ReadUsers();
        }

        [HttpPost]
        [Route("Login")]
        public User LoginUser(JsonElement LoginUser)
        {
            string username = LoginUser.GetProperty("Username").GetString();
            string password = LoginUser.GetProperty("Password").GetString();
            User user = new User();
            return user.Login(username, password);
            //כתיבה בטרמינל
            //{"Username": "string", "Password": "string"}
        }


        // POST api/<UserController>
        [HttpPost]
        public int Post([FromBody] User user)
        {
            return user.Insert();
        }


        // PUT api/<UserController>/5
        [HttpPut("{userId}")]
        public bool Put(int userId, [FromBody] User user)
        {
            user.UserId = userId;
            int numAffected = user.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }


        // GET: api/<UserController>
        [HttpGet("/GetToken/depId/{depId}")]
        public List<string> GetToken(int depId)
        {
            User user = new User();
            return user.ReadToken(depId);
        }

        // PUT api/<UserController>
        [HttpPut("/PutToken/userId/{userId}")]
        public bool PutToken(int userId, [FromBody] string token)
        {
            User user = new User();
            int numAffected = user.UpdateToken(userId, token);
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        [HttpPost("Email")]
        public IActionResult Email ([FromBody] User user)
        {
            try
            {
                //User user = new User();
                //user.Email = email;

                string email = user.Email;
                string username = user.Username;
                string firstName = user.FirstName;
                string lastName = user.LastName;
                string password = user.Password;

                MailMessage SendDetails = new MailMessage();
                string usermail = user.Email;
                string ourMail = "cgroup36.proj@gmail.com";
                string ourMailPass = "ilmdsebngylhpnxs\r\n";
              
                string messageBody =  "היי " + lastName + " " + firstName + "\n";
                messageBody += "אנו שמחים לבשר לך על הצטרפותך למערכת של בית החולים בהצלחה. להלן הפרטים שלך עבור כניסה למערכת: \n";
                messageBody += "שם משתמש: " + username + "\n"; 
                messageBody += "סיסמא: " + password + "\n";
                messageBody += "המייל: " + email + "\n";
                messageBody = messageBody.Replace("\n", Environment.NewLine);
                //messageBody += email + "המייל: " + password + "סיסמא: " + username + "אנו שמחים לבשר לך הצטרפת למערכת של בית החולים בהצלחה. להלן הפרטים שלך עבור המערכת: שם משתמש: " + lastName + firstName + "היי";

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");


                // Buidlding the message 
                SendDetails.To.Add(usermail);
                SendDetails.From = new MailAddress(ourMail);
                SendDetails.Body = messageBody;
                SendDetails.Subject = "בית חולים הלל יפה - מערכות מידע";//כתורת למייל
                SendDetails.IsBodyHtml = true;
                // Done

                smtpClient.Credentials = new System.Net.NetworkCredential(ourMail, ourMailPass);
                smtpClient.EnableSsl = true; // Security
                smtpClient.Port = 587; // SMTP client to SMTP Server port. (port=25 means smtp server to smtp server)
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network; // email is sent through the network
                smtpClient.Credentials = new NetworkCredential(ourMail, ourMailPass);

                try
                {
                    smtpClient.Send(SendDetails);
                    Trace.WriteLine("code send successfully");

                }
                catch (Exception ex)
                {
                    Trace.WriteLine(ex.ToString());
                    Trace.WriteLine(ex.Message);
                }

                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // DELETE api/<UserController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}

//[HttpPost("Email")]
//public IActionResult Email([FromBody] string email)
//{
//    try
//    {
//        User user = new User();
//        user.Email = email;

//        MailMessage SendDetails = new MailMessage();
//        string usermail = user.Email;
//        string ourMail = "cgroup36.proj@gmail.com";
//        string ourMailPass = "ilmdsebngylhpnxs\r\n";
//        string messageBody = "Forgot your password? We recived a request to reset the password for your account, your reset code is " + usermail;
//        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");


//        // Buidlding the message 
//        SendDetails.To.Add(usermail);
//        SendDetails.From = new MailAddress(ourMail);
//        SendDetails.Body = messageBody;
//        SendDetails.Subject = "בית חולים הלל יפה - מערכות מידע";//כתורת למייל
//        SendDetails.IsBodyHtml = true;
//        // Done

//        smtpClient.Credentials = new System.Net.NetworkCredential(ourMail, ourMailPass);
//        smtpClient.EnableSsl = true; // Security
//        smtpClient.Port = 587; // SMTP client to SMTP Server port. (port=25 means smtp server to smtp server)
//        smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network; // email is sent through the network
//        smtpClient.Credentials = new NetworkCredential(ourMail, ourMailPass);

//        try
//        {
//            smtpClient.Send(SendDetails);
//            Trace.WriteLine("code send successfully");

//        }
//        catch (Exception ex)
//        {
//            Trace.WriteLine(ex.ToString());
//            Trace.WriteLine(ex.Message);
//        }

//        return Ok();
//    }
//    catch (Exception ex)
//    {
//        return BadRequest(ex.Message);
//    }
//}


