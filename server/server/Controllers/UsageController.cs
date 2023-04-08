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
            ConsumptionPrediction.Main(); /////////למחוק
            Usage use = new Usage();
            return use.Read();
        }

        // GET api/<UsageController>/5
        [HttpGet("{depId}")]
        public Object GetMedUsages(int depId)
        {
            Usage use = new Usage();
            return use.ReadMedUsages(depId);
        }

        // POST api/<UsageController>
        [HttpPost]
        public bool Post([FromBody] Usage use)
        {
            return use.Insert();
          
        }

        // PUT api/<UsageController>/5
        [HttpPut("{usageId}")]
        public void Put(int usageId, [FromBody] Usage use)
        {
          
        }

        // DELETE api/<UsageController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
