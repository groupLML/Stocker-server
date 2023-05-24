using Microsoft.AspNetCore.Mvc;
using server.Models;
using System.Runtime.ConstrainedExecution;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StockController : ControllerBase
    {
        // GET: api/<StockController>
        [HttpGet]
        public Object Get()
        {
            Stock stock = new Stock();
            return stock.Read();
        }

        // GET: api/<StockController>
        [HttpGet("{depId}")]
        public Object GetDepStock(int depId)
        {
            Stock stock = new Stock();
            return stock.ReadDepStock(depId);
        }

        // POST api/<StockController>
        [HttpPost]
        public IActionResult Post([FromBody] Stock stock)
        {
            int numAffected = stock.Insert();
            if (numAffected == 1)
                return Ok("התרופה התוספה בהצלחה");
            else if (numAffected == -1)
                return Unauthorized("התרופה המבוקשת לא פעילה, לא ניתן להשלים את הפעולה"); //status 401 Lack of permission to access the requested resource
            else
                return BadRequest("הפעולה נכשלה");
        }


        // PUT api/<StockController>/5
        [HttpPut("medId/{medId}/depId/{depId}/qty/{qty}")]
        public bool Put(int medId, int depId, float qty)
        {
            Stock stock = new Stock(0, medId, depId, qty, DateTime.Now);
            return stock.Update();
        }

        // PUT api/<StockController>/5
        [HttpPut("depId/{depId}")]
        public bool PutDepStock(int depId,[FromBody] Stock stock)
        {
            Stock stock = new Stock(0, medId, depId, qty, DateTime.Now);
            return stock.Update();
        }


        // DELETE api/<StockController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
