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
        public IEnumerable<Norm> Get() //קריאה של התקנים עם פרטי התרופות בכל תקן
        {
            Norm mednorm = new Norm();
            return mednorm.Read();
        }

        // GET api/<NormRequestController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<NormRequestController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
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
