using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DepartmentController : ControllerBase
    {
        // GET: api/<DepartmentController>
        [HttpGet]
        public IEnumerable<Department> Get()
        {
            Department dep = new Department();
            return dep.Read();
        }

        // GET api/<DepartmentController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<DepartmentController>
        [HttpPost]
        public int Post([FromBody] Department dep)
        {
            return dep.Insert();
        }

        // PUT api/<DepartmentController>/5
        [HttpPut("{depId}")]
        public bool Put(int depId, [FromBody] Department dep)
        {
            dep.DepId = depId;
            int numAffected = dep.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }


        // DELETE api/<DepartmentController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
