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
        [HttpGet("GetOrderDetails/depId/{depId}/orderId/{orderId}/type/{type}")]
        public Object GetOrderDetails(int depId, int orderId, int type) //type: 1=push, 2=pull
        {
            Order po = new Order();
            return po.ReadMedsOrder(depId, orderId, type);
        }

        // POST api/<PullOrderController>
        [HttpPost]
        public bool Post([FromBody] PullOrder po)
        {
            return po.Insert();

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
            string json = pullOrder.GetProperty("pullOrder").ToString();
            PullOrder po = JsonConvert.DeserializeObject<PullOrder>(json);
            po.MedList = JsonConvert.DeserializeObject<List<MedOrder>>(pullOrder.GetProperty("medList").GetRawText());
            po.OrderId = pullId;

            return po.UpdatePharmIssued();
        }

        // PUT api/<PullOrderController>/5
        [HttpPut("UpdatePharmTaken/pullId/{pullId}/pUser/{pUser}")] 
        public bool PutPharmTaken(int pullId, int pUser) // Status = T
        {
            PullOrder po = new PullOrder();
            po.OrderId = pullId;
            po.PUser = pUser;
            int numAffected= po.UpdatePharmTaken();

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
