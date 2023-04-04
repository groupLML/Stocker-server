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

        // DELETE api/<PullOrderController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
