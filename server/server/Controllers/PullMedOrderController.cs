using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PullMedOrderController : ControllerBase
    {
        // GET: api/<PullMedOrderController>
        [HttpGet]
        public IEnumerable<PullMedOrder> Get()
        {
            PullMedOrder pmo = new PullMedOrder();
            return pmo.Read();
        }

        // GET api/<PullMedOrderController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<PullMedOrderController>
        [HttpPost]
        public IActionResult Post([FromBody] PullMedOrder pmo)
        {
            int numAffected = pmo.Insert();
            if (numAffected == 1)
                return Ok();
            else
                return BadRequest();
        }

        // PUT api/<PullMedOrderController>/5
        [HttpPut("pullId/medId")]
        public bool Put(int pullId, int medId, [FromBody] PullMedOrder pmo)
        {
            pmo.PullId = pullId;
            pmo.MedId = medId;
            int numAffected = pmo.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // DELETE api/<PullMedOrderController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
