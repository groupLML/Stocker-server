using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MedUsageController : ControllerBase
    {
        // GET: api/<MedUsageController>
        [HttpGet]
        public IEnumerable<MedUsage> Get()
        {
            MedUsage mu = new MedUsage();
            return mu.Read();
        }

        // GET api/<MedUsageController>/5
        [HttpGet("{depId}")]
        public Object GetMedUsages(int depId)
        {
            MedUsage mu = new MedUsage();
            return mu.ReadMedUsages(depId);
        }

        // POST api/<MedUsageController>
        [HttpPost]
        public IActionResult Post([FromBody] MedUsage mu)
        {
            int numAffected = mu.Insert();
            if (numAffected == 1)
                return Ok();
            else
                return BadRequest();
        }

        // PUT api/<MedUsageController>/5
        [HttpPut("useId/medId")]
        public bool Put(int useId, int medId, [FromBody] MedUsage mu)
        {
            mu.UseId = useId;
            mu.MedId= medId;
            int numAffected = mu.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // DELETE api/<MedUsageController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
