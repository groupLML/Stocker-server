using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PushMedOrderController : ControllerBase
    {
        // GET: api/<PushMedOrderController>
        [HttpGet]
        public IEnumerable<PushMedOrder> Get()
        {
            PushMedOrder pmo = new PushMedOrder();
            return pmo.Read();
        }

        // GET api/<PushMedOrderController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<PushMedOrderController>
        [HttpPost]
        public IActionResult Post([FromBody] PushMedOrder pmo)
        {
            int numAffected = pmo.Insert();
            if (numAffected == 1)
                return Ok();
            else
                return BadRequest();
        }

        // PUT api/<PushMedOrderController>/5
        [HttpPut("pushId/medId")]
        public bool Put(int pushId, int medId, [FromBody] PushMedOrder pmo)
        {
            pmo.PushId = pushId;
            pmo.MedId = medId;
            int numAffected = pmo.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // DELETE api/<PushMedOrderController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
