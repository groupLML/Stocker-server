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
        public Object GetPushOrders(int depId, int orderId, int type)
        {
            PushOrder po = new PushOrder();
            return po.ReadMedsPushOrder(depId, orderId, type);
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
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
