using Microsoft.AspNetCore.Mvc;
using server.Models;
using System.Text.Json;
using Newtonsoft.Json;
using System.Runtime.Intrinsics.X86;
using MathNet.Numerics;

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
        [HttpGet("GetOrderDetails/orderId/{orderId}")]
        public Object GetOrderDetails(int orderId)
        {
            Order po = new Order();
            return po.ReadMedsOrder(orderId, 1); //type: 1=push, 2=pull
        }

        // GET api/<PushOrderController>/5
        [HttpGet("GetPushOrdersPharm")]
        public Object GetPushOrdersPharm()
        {
            PushOrder po = new PushOrder();
            return po.ReadPushOrdersPharm();
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
            PushOrder po = new PushOrder();
            po.OrderId = pushId;
            po.PUser = pushOrder.GetProperty("pUser").GetInt32();
            po.ReportNum = pushOrder.GetProperty("reportNum").GetString();
            po.MedList = JsonConvert.DeserializeObject<List<MedOrder>>(pushOrder.GetProperty("medList").GetRawText());

            return po.UpdatePharmIssued();

            // כתיבה בטרמינל:
            //   { "pushOrder": {"orderId": 14,"depId": 3, "pUser": 5,  "reportNum": "11111", "status": "I", "orderDate": "2023-04-15T12:15:32.323", "lastUpdate": "2023-04-15T14:03:00.633", "medList": []
            //   }, "medList": [ { "medId": 1, "poQty": 3, "supQty": 1,  "mazNum": "M1191300"} ] }
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
