using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MedRequestController : ControllerBase
    {
        // GET: api/<MedRequestController>
        [HttpGet]
        public IEnumerable<MedRequest> Get()
        {
            MedRequest mr = new MedRequest();
            return mr.Read();
        }

        // GET api/<MedRequestController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<MedRequestController>
        [HttpPost]
        public bool Post([FromBody] MedRequest mr)
        {
            return mr.Insert();
        }


        // PUT api/<MedRequestController>/5
        [HttpPut("{reqId}")]
        public bool Put(int reqId, [FromBody] MedRequest mr)
        {
            mr.ReqId = reqId;
            int numAffected = mr.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // DELETE api/<MedRequestController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
