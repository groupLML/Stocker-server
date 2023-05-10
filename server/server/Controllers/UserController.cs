using server.Models;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;

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


        // DELETE api/<UserController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
