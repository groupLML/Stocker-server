using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MedNormController : ControllerBase
    {
        // GET: api/<MedNormController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<MedNormController>/5
        [HttpGet("{depId}")]
        public Object GetMedNorms(int depId)
        {
            MedNorm mn = new MedNorm();
            return mn.ReadDepMedNorms(depId);
        }

        // POST api/<MedNormController>
        [HttpPost]
        public bool Post([FromBody] MedNorm mn)
        {
            return mn.Insert();
        }

        // PUT api/<MedNormController>/5
        [HttpPut("{normId}")]
        public bool Put(int normId, [FromBody] MedNorm mn)
        {
            mn.NormId = normId;
            int numAffected = mn.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // DELETE api/<MedNormController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
