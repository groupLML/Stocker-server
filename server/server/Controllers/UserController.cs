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
            User user= new User();
            return user.Read();
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


        // GET api/<UserController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<UserController>
        [HttpPost]
        public bool Post([FromBody] User user)
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

        // DELETE api/<UserController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
