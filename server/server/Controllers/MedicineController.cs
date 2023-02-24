using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MedicineController : ControllerBase
    {
        // GET: api/<MedicineController>
        [HttpGet]
        public IEnumerable<Medicine> Get()
        {
            Medicine med = new Medicine();
            return med.Read();
        }

        // GET: api/<MedicineController>
        [HttpGet("/GetActive")]
        public IEnumerable<Medicine> GetActive()
        {
            Medicine med = new Medicine();
            return med.ReadActive();
        }

        // GET api/<MedicineController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<MedicineController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<MedicineController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<MedicineController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
