using Microsoft.AspNetCore.Mvc;
using server.Models;
using System.Text.Json;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MedRequestController : ControllerBase
    {
        // GET: api/<MedRequestController>
        [HttpGet]
        public IEnumerable<MedRequest> Get()
        {
            MedRequest mr = new MedRequest();
            return mr.Read();
        }

        // GET: api/<MedRequestController>
        [HttpGet("{depId}")]
        public Object GetRequests(int depId)
        {
            MedRequest mr = new MedRequest();
            return mr.ReadRequests(depId);
        }


        // POST api/<MedRequestController>
        [HttpPost]
        public bool Post([FromBody] JsonElement medReq)
        {
            int cUser = medReq.GetProperty("cUser").GetInt32();
            int cDep= medReq.GetProperty("cDep").GetInt32();
            int medId = medReq.GetProperty("medId").GetInt32();
            float reqQty = (float)medReq.GetProperty("reqQty").GetSingle();
            DateTime reqDate = medReq.GetProperty("reqDate").GetDateTime();
            string[] depTypes = medReq.GetProperty("depTypes").EnumerateArray().Select(x => x.GetString()).ToArray();

            MedRequest mr = new MedRequest();
            return mr.InsertReq(cUser, cDep, medId, reqQty, reqDate, depTypes);
           
        }


        // PUT api/<MedRequestController>/5
        [HttpPut("{reqId}")]
        public bool Put(int reqId, [FromBody] MedRequest mr)
        {
            mr.ReqId = reqId;
            int numAffected = mr.Update();
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // DELETE api/<MedRequestController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
