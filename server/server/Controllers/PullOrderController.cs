using Microsoft.AspNetCore.Mvc;
using server.Models;
using System.Text.Json;
using Newtonsoft.Json;
using System.Runtime.Intrinsics.X86;
using System.Runtime.Intrinsics.Arm;

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
        [HttpGet("GetPullOrdersPharm")]
        public Object GetPullOrdersPharm()
        {
            PullOrder po = new PullOrder();
            return po.ReadPullOrdersPharm();
        }

        // GET api/<PullOrderController>/5
        [HttpGet("GetPullOrderPharmById/orderId/{orderId}")]
        public Object GetPullOrderById(int orderId)
        {
            PullOrder po = new PullOrder();
            return po.ReadPullOrderPharm(orderId);
        }

        // GET api/<PullOrderController>/5
        [HttpGet("GetOrderDetails/orderId/{orderId}")]
        public Object GetOrderDetails(int orderId) 
        {
            Order po = new Order();
            return po.ReadMedsOrder(orderId,2); //type: 1=push, 2=pull
        }

        // POST api/<PullOrderController>
        [HttpPost]
        public bool Post([FromBody] PullOrder po)
        {
            return po.Insert();

            // כתיבה בטרמניל:
            //{ "orderId": 0, "depId": 3, "pUser": 0, "reportNum": "11118", "status": "W", "orderDate": "2023-04-04T07:53:02.996Z",
            //  "lastUpdate": "2023-04-04T07:53:02.996Z","medList": [ {"medId": 1, "poQty": 3, "supQty": 0, "mazNum": "" } ], "nUser": 3 }
        }


        // PUT api/<PullOrderController>/5
        [HttpPut("UpdateNurse/pullId/{pullId}/nUser/{nUser}")]
        public bool PutNurse(int pullId, int nUser, [FromBody] List<MedOrder> medList)
        { 
            PullOrder po = new PullOrder();
            po.OrderId = pullId;
            po.NUser = nUser;
            po.MedList = medList;
            return po.UpdateNurse();
        }

        // PUT api/<PullOrderController>/5
        [HttpPut("UpdatePharmIssued/pullId/{pullId}")]
        public bool PutPharmIssued(int pullId, [FromBody] JsonElement pullOrder) // Status = I
        {
            PullOrder po = new PullOrder();
            po.OrderId = pullId;
            po.PUser = pullOrder.GetProperty("pUser").GetInt32();
            po.ReportNum = pullOrder.GetProperty("reportNum").GetString();
            po.MedList = JsonConvert.DeserializeObject<List<MedOrder>>(pullOrder.GetProperty("medList").GetRawText());
       
            return po.UpdatePharmIssued();

            // כתיבה בטרמינל:
            // {"pUser": 5, "reportNum": "353535","medList": [{ "medId": 5,"poQty": 1,"supQty": 0,"mazNum": "M1191304"}]}

            //   { "pullOrder": {"nUser": 4,"orderId": 92,"depId": 3, "pUser": 5,  "reportNum": "11111", "status": "T", "orderDate": "2023-04-15T12:15:32.323", "lastUpdate": "2023-04-15T14:03:00.633", "medList": []
            //   }, "medList": [ { "medId": 1, "poQty": 3, "supQty": 1,  "mazNum": "M1191300"} ] }
        }

        // PUT api/<PullOrderController>/5
        [HttpPut("UpdatePharmTaken/pullId/{pullId}/pUser/{pUser}")] 
        public bool PutPharmTaken(int pullId, int pUser) // Status = T
        {
            PullOrder po = new PullOrder();
            int numAffected= po.UpdatePharmTaken(pullId, pUser);

            if (numAffected == 1)
                return true;
            else
                return false;
        }


        // DELETE api/<PullOrderController>/5
        [HttpDelete("orderId/{orderId}/type/{type}")]
        public IActionResult Delete(int orderId, int type)
        {
            Order po = new Order();
            int numAffected = po.Delete(orderId, type);

            if (numAffected >= 2)
                return Ok(true);
            else if (numAffected == -1)
                return Unauthorized("ההזמנה בטיפול, לא ניתן למחוק אותה בשלב זה");
            else
                return BadRequest("הפעולה נכשלה");
        }
    }
}
