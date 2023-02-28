using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PushOrderController : ControllerBase
    {
        // GET: api/<PushOrderController>
        [HttpGet]
        public IEnumerable<PushOrder> Get()
        {
            PushOrder po = new PushOrder();
            return po.Read();
        }

        // GET api/<PushOrderController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<PushOrderController>
        [HttpPost]
        public IActionResult Post([FromBody] PushOrder po)
        {
            int numAffected = po.Insert();
            if (numAffected == 1)
                return Ok();
            else
                return BadRequest();
        }

        // PUT api/<PushOrderController>/5
        [HttpPut("{pushId}")]
        public bool Put(int pushId, [FromBody] PushOrder po)
        {
            po.PushId = pushId;
            int numAffected = po.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // DELETE api/<PushOrderController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
