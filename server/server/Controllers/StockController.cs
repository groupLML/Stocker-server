using Microsoft.AspNetCore.Mvc;
using server.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StockController : ControllerBase
    {
        // GET: api/<StockController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/<StockController>
        [HttpGet("{depId}")]
        public Object GetRequests(int depId)
        {
            Stock stock = new Stock();
            return stock.ReadDepStocks(depId);
        }

        // POST api/<StockController>
        [HttpPost]
        public bool Post([FromBody] Stock stock)
        {
            return stock.Insert();
        }


        // PUT api/<StockController>/5
        [HttpPut("{stcId}")]
        public bool Put(int stcId, [FromBody] Stock stock)
        {
            stock.StcId = stcId;
            int numAffected = stock.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }


        // DELETE api/<StockController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
