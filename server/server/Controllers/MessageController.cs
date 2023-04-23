using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MessageController : ControllerBase
    {
        // GET: api/<MessageController>
        [HttpGet]
        public Object Get()
        {
            Message m = new Message();
            return m.Read();
        }

        // GET api/<MessageController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<MessageController>
        [HttpPost]
        public bool Post([FromBody] Message msg)
        {
            int numAffected = msg.Insert();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // PUT api/<MessageController>/5
        [HttpPut("{msgId}")]
        public bool Put(int msgId, [FromBody] Message msg)
        {
            msg.MsgId = msgId;  
            int numAffected = msg.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // DELETE api/<MessageController>/5
        [HttpDelete("{msgId}")]
        public bool Delete(int msgId)
        {
            Message m = new Message();
            int numAffected = m.Delete(msgId); 
            if (numAffected == 1)
                return true;
            else
                return false;
        }
    }
}
