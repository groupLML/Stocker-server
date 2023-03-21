using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsageController : ControllerBase
    {
        // GET: api/<UsageController>
        [HttpGet]
        public IEnumerable<Usage> Get()
        {
            Usage use = new Usage();
            return use.Read();
        }

        // GET api/<UsageController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<UsageController>
        [HttpPost]
        public IActionResult Post([FromBody] Usage use)
        {
            int numAffected = use.Insert();
            if (numAffected == 1)
                return Ok();
            else
                return BadRequest();
        }

        // PUT api/<UsageController>/5
        [HttpPut("{usageId}")]
        public bool Put(int usageId, [FromBody] Usage use)
        {
            use.UsageId = usageId;
            int numAffected = use.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // DELETE api/<UsageController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }


        //// GET api/<MedUsageController>/5
        //[HttpGet("{depId}")]
        //public Object GetMedUsages(int depId)
        //{
        //    MedUsage mu = new MedUsage();
        //    return mu.ReadMedUsages(depId);
        //}

        //// POST api/<MedUsageController>
        //[HttpPost]
        //public IActionResult Post([FromBody] MedUsage mu)
        //{
        //    int numAffected = mu.Insert();
        //    if (numAffected == 1)
        //        return Ok();
        //    else
        //        return BadRequest();
        //}

        //// PUT api/<MedUsageController>/5
        //[HttpPut("usageId/medId")]
        //public bool Put(int usageId, int medId, [FromBody] MedUsage mu)
        //{
        //    mu.UsageId = usageId;
        //    mu.MedId = medId;
        //    int numAffected = mu.Update();
        //    if (numAffected == 1)
        //        return true;
        //    else
        //        return false;
        //}







    }
}
