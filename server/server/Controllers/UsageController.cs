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
        [HttpGet("{depId}")]
        public Object GetMedUsages(int depId)
        {
            Usage use = new Usage();
            return use.ReadMedUsages(depId);
        }

        // GET: api/<UsageController>
        [HttpGet("/Prediction/month/{month}/dep/{dep}/med/{med}")]
        public int GetPrediction(int month, int dep, int med)
        {
            Prediction p= new Prediction(); 
            return p.GetPrediction(month,dep, med);
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
