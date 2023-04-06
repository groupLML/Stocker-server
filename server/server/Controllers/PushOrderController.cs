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
    public class PushOrderController : ControllerBase
    {
        // GET: api/<PushOrderController>
        [HttpGet]
        public IEnumerable<PushOrder> Get()
        {
            PushOrder po = new PushOrder();
            return po.Read();
        }

        // GET api/<PushOrderController>/5
        [HttpGet("GetPushOrders/depId/{depId}")]
        public Object GetPushOrders(int depId)
        {
            PushOrder po = new PushOrder();
            return po.ReadPushOrders(depId);
        }

        // GET api/<PushOrderController>/5
        [HttpGet("GetOrderDetails/depId/{depId}/orderId/{orderId}/type/{type}")]
        public Object GetOrderDetails(int depId, int orderId, int type)
        {
            Order po = new Order();
            return po.ReadMedsOrder(depId, orderId, type);
        }

        // POST api/<PushOrderController>
        [HttpPost]
        public bool Post([FromBody] PushOrder po)
        {
            return po.Insert();

        }

        // PUT api/<PushOrderController>/5
        [HttpPut("{pushId}")]
        public bool Put(int pushId, [FromBody] PushOrder po)
        {
            po.OrderId = pushId;
            return po.Update();
        }

        // DELETE api/<PushOrderController>/5
        [HttpDelete("orderId/{orderId}/type/{type}")]
        public IActionResult Delete(int orderId, int type)
        {
            Order po = new Order();
            int numAffected = po.Delete(orderId,type);

            if (numAffected >= 2)
                return Ok(true);
            else if (numAffected == -1)
                return Unauthorized("ההזמנה נופקה, לא ניתן למחוק אותה בשלב זה");
            else
                return BadRequest("הפעולה נכשלה");
        }
    }
}
