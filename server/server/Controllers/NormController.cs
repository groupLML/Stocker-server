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
        public IEnumerable<Norm> Get() //קריאה של התקנים עם פרטי התרופות בכל תקן
        {
            Norm mednorm = new Norm();
            return mednorm.Read();
        }


        // GET api/<NormController>/5
        [HttpGet("depId/{depId}")] 
        public List<Norm> GetMedsNorm(int depId) //קריאה של פרטי תרופות של תקן מחלקתי מסוים 
        {
            Norm mednorm = new Norm();
            return mednorm.ReadDepNorm(depId);
        }


        // POST api/<NormController>
        [HttpPost]
        public bool Post([FromBody] Norm norm)
        {
            return norm.Insert();
        }


        // PUT api/<NormController>/5
        [HttpPut("{normId}")]
        public bool Put(int normId, [FromBody] Norm norm)
        {
            if (normId == 0){
                return norm.Insert();
            }
            norm.NormId = normId;
            return norm.Update();
        }
    }
}
