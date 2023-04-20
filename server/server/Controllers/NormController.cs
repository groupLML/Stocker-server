using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NormController : ControllerBase
    {
        // GET: api/<NormController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<NormController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // GET api/<NormController>/5
        [HttpGet("{depId}")]
        public Object GetMedsNorm(int depId)
        {
            Norm mn = new Norm();
            return mn.ReadDepMedsNorm(depId);
        }

        // POST api/<NormController>
        [HttpPost]
        public IActionResult Post([FromBody] Norm norm)
        {
            int numAffected = norm.Insert();
            if (numAffected == 1)
                return Ok();
            else
                return BadRequest();
            //   { "pushOrder": {"orderId": 14,"depId": 3, "pUser": 5,  "reportNum": "11111", "status": "I", "orderDate": "2023-04-15T12:15:32.323", "lastUpdate": "2023-04-15T14:03:00.633", "medList": []
            //   }, "medList": [ { "medId": 1, "poQty": 3, "supQty": 1,  "mazNum": "M1191300"} ] }
        }


        // PUT api/<NormController>/5
        [HttpPut("{normId}")]
        public bool Put(int normId, [FromBody] Norm norm)
        {
            norm.NormId = normId;
            int numAffected = norm.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // DELETE api/<NormController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
