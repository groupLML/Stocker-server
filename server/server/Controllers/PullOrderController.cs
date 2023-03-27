using Microsoft.AspNetCore.Mvc;
using server.Models;
using System.Text.Json;
using Newtonsoft.Json;
using System.Runtime.Intrinsics.X86;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PullOrderController : ControllerBase
    {
        // GET: api/<PullOrderController>
        [HttpGet]
        public IEnumerable<PullOrder> Get()
        {
            PullOrder po = new PullOrder();
            return po.Read();
        }

        // GET api/<PullOrderController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }


        // POST api/<PullOrderController>
        [HttpPost]
        public IActionResult Post([FromBody] PullOrder po)
        {
            int numAffected = po.Insert();
            if (numAffected == 1)
                return Ok();
            else
                return BadRequest();
        }


        // PUT api/<PullOrderController>/5
        [HttpPut("{pullId}")]
        public bool Put(int pullId, [FromBody] PullOrder po)
        {
            po.OrderId = pullId;
            int numAffected = po.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // DELETE api/<PullOrderController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
