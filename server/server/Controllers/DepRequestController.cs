using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DepRequestController : ControllerBase
    {
        // GET: api/<DepRequestController>
        [HttpGet]
        public IEnumerable<DepRequest> Get()
        {
            DepRequest dr = new DepRequest();
            return dr.Read();
        }

        // GET: api/<MedRequestController>
        [HttpGet("{depId}")]
        public Object GetRequests(int depId)
        {
            DepRequest dr = new DepRequest();
            return dr.ReadRequests(depId);
        }


        // POST api/<DepRequestController>
        [HttpPost]
        public IActionResult Post([FromBody] DepRequest dr)
        {
            int numAffected = dr.Insert();
            if (numAffected == 1)
                return Ok();
            else
                return BadRequest();
        }


        // PUT api/<MedRequestController>/5
        [HttpPut("{reqId}")]
        public bool Put(int reqId, [FromBody] DepRequest dr)
        {
            dr.ReqId = reqId;
            int numAffected = dr.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // DELETE api/<DepRequestController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
