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
        [HttpGet("/GetActiveMeds")]
        public Object GetActiveMeds()
        {
            Medicine med = new Medicine();
            return med.ReadActiveMeds();
        }

        // GET: api/<MedicineController>
        [HttpGet("/GetMedsAdmin")]
        public Object GetMedsAdmin()
        {
            Medicine med = new Medicine();
            return med.ReadMedsAdmin();
        }


        // POST api/<MedicineController>
        [HttpPost]
        public bool Post([FromBody] Medicine med)
        {
            int numAffected = med.Insert();
            if (numAffected == 1)
                return true;
            else
                return false; 
        }


        // PUT api/<MedicineController>/5
        [HttpPut("{medId}")]
        public bool Put(int medId, [FromBody] Medicine med)
        {
            med.MedId = medId;
            int numAffected = med.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }


        // DELETE api/<MedicineController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
