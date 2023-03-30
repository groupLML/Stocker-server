using Microsoft.AspNetCore.Mvc;
using server.Models;
using System.Text.Json;
using Newtonsoft.Json;
using System.Runtime.Intrinsics.X86;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PullOrderController : ControllerBase
    {
        // GET: api/<PullOrderController>
        [HttpGet]
        public IEnumerable<PullOrder> Get()
        {
            PullOrder po = new PullOrder();
            return po.Read();
        }

        // GET api/<PullOrderController>/5
        [HttpGet("GetPullOrders/depId/{depId}")]
        public Object GetPullOrders(int depId)
        {
            PullOrder po = new PullOrder();
            return po.ReadPullOrders(depId);
        }

        // GET api/<PullOrderController>/5
        [HttpGet("GetOrderDetails/depId/{depId}/orderId/{orderId}")]
        public Object GetPullOrders(int depId, int orderId)
        {
            PullOrder po = new PullOrder();
            return po.ReadMedsPullOrder(depId, orderId);
        }

        // POST api/<PullOrderController>
        [HttpPost]
        public bool Post([FromBody] PullOrder po)
        {
            return po.Insert();
        }


        // PUT api/<PullOrderController>/5
        [HttpPut("{pullId}")]
        public bool Put(int pullId, [FromBody] PullOrder po)
        {
            po.OrderId = pullId;
            int numAffected = po.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // DELETE api/<PullOrderController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
