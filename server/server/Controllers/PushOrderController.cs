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
        public Object GetOrderDetails(int depId, int orderId, int type) //type: 1=push, 2=pull
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

        // PUT api/<PullOrderController>/5
        [HttpPut("UpdatePharmIssued/pushId/{pushId}")]
        public bool PutPharmIssued(int pushId, [FromBody] JsonElement pushOrder) // Status = I
        {
            string json = pushOrder.GetProperty("pushOrder").ToString();
            PushOrder po = JsonConvert.DeserializeObject<PushOrder>(json);
            po.MedList = JsonConvert.DeserializeObject<List<MedOrder>>(pushOrder.GetProperty("medList").GetRawText());
            po.OrderId = pushId;

            return po.UpdatePharmIssued();
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
