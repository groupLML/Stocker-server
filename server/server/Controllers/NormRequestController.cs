using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NormRequestController : ControllerBase
    {
        //כרגע אין שימוש, מחיקה////////////////////////////////////////////////////////
        // GET: api/<NormRequestController>
        [HttpGet]
        public IEnumerable<NormRequest> Get() //קריאה של התקנים עם פרטי התרופות בכל תקן
        {
            NormRequest nr = new NormRequest();
            return nr.Read();
        }

        // GET api/<NormRequestController>/5
        [HttpGet("depId/{depId}")]
        public List<NormRequest> GetMedsNormReq(int depId)
        {
            NormRequest nr = new NormRequest();
            return nr.ReadDepNormReq(depId);
        }

        // POST api/<NormRequestController>
        [HttpPost]
        public bool Post([FromBody] NormRequest nr)
        {
            return nr.Insert();
        }

        // PUT api/<NormRequestController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<NormRequestController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
