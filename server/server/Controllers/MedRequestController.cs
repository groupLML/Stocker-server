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
        [HttpGet("RequestsManager")]
        public Object GetAllRequests()
        {
            MedRequest mr = new MedRequest();
            return mr.ReadRequestsManager();
        }

        // GET: api/<MedRequestController>
        [HttpGet("RequestsMine/{depId}")]
        public Object GetRequestsMine(int depId)
        {
            MedRequest mr = new MedRequest();
            return mr.ReadRequestsMine(depId);
        }

        // GET: api/<MedRequestController>
        [HttpGet("RequestsOthers/{depId}")]
        public Object GetRequestsOthers(int depId)
        {
            MedRequest mr = new MedRequest();
            return mr.ReadRequestsOthers(depId);
        }

        // GET: api/<MedRequestController>
        [HttpGet("RequestDepTypes/depId/{depId}/reqId/{reqId}")]
        public List<string> GetRequestDepTypes(int depId, int reqId)
        {
            MedRequest mr = new MedRequest();
            return mr.ReadRequestDepTypes(depId, reqId);
        }

        // GET: api/<MedRequestController>
        [HttpGet("Report/{depId}")]
        public Object GetReport(int depId)
        {
            MedRequest mr = new MedRequest();
            return mr.ReadDepReport(depId);
        }


        // POST api/<MedRequestController>
        [HttpPost]
        public IActionResult Post([FromBody] JsonElement medReq)
        {
            string[] depTypes = medReq.GetProperty("depTypes").EnumerateArray().Select(x => x.GetString()).ToArray();
            int cDep = medReq.GetProperty("cDep").GetInt32();
            int cUser = medReq.GetProperty("cUser").GetInt32();
            int medId = medReq.GetProperty("medId").GetInt32();
            float reqQty = (float)medReq.GetProperty("reqQty").GetSingle();

            MedRequest mr = new MedRequest();
            int numAffected= mr.InsertReq(cUser, cDep, medId, reqQty, depTypes);

            if (numAffected == 1)
                return Ok("הבקשה התווספה בהצלחה"); //status 200
            else if (numAffected == -1)
                return Unauthorized("ההזמנה כבר קיימת במערכת"); //status 401 Lack of permission to access the requested resource
            else
                return BadRequest("הפעולה נכשלה"); //status 500
        
            //swagger exp: {"cUser": 45, "cDep": 3, "medId": 8, "reqQty": 5, "depTypes": ["כירורגיה"]}
        }


        // PUT api/<MedRequestController>/5
        [HttpPut("WaitingReq/{reqId}")]
        public IActionResult PutWaitingReq(int reqId, [FromBody] JsonElement medReq)
        {
            string[] depTypes = medReq.GetProperty("depTypes").EnumerateArray().Select(x => x.GetString()).ToArray();
            string json = medReq.GetProperty("medRequest").ToString();
            MedRequest mr = JsonConvert.DeserializeObject<MedRequest>(json);
            mr.ReqId = reqId;

            int numAffected = mr.UpdateWaitingReq(depTypes);

            if (numAffected == 1)
                return Ok("הבקשה עודכנה בהצלחה");
            else if (numAffected == -1)
                return Unauthorized("הבקשה בטיפול, לא ניתן לעדכן אותה בשלב זה"); //status 401 Lack of permission to access the requested resource
            else
                return BadRequest("הפעולה נכשלה");

            // swagger exp:{"medRequest": { "reqId": 0, "cUser": 44, "aUser": 0, "cDep": 3, "aDep": 0, "medId": 7,"reqQty": 50, "reqStatus": "W",  "reqDate": "2023-03-12T15:28:45.17"},"depTypes":  ["כירורגיה"]}
        }


        // PUT api/<MedRequestController>/5
        [HttpPut("ApprovedReq/{reqId}/aUser/{aUser}/aDep/{aDep}")]
        public bool PutApprovedReq(int reqId, int aUser, int aDep)
        {
            MedRequest mr = new MedRequest();
            int numAffected = mr.UpdateApprovedReq(reqId, aUser, aDep);
            if (numAffected == 1)
                return true;
            else
                return false;
        }

        // PUT api/<MedRequestController>/5
        [HttpPut("TransportRe/{reqId}/kind/{kind}")]
        public bool PutTransportReq(int reqId, char kind) //kind: A= approvedTransport, C= cancelledTransport
        {
            MedRequest mr = new MedRequest();
            int numAffected = mr.UpdateTransportReq(reqId, kind);
            if (numAffected >= 1)
                return true;
            else
                return false;
        }


        // DELETE api/<MedRequestController>/5
        [HttpDelete("{reqId}")]
        public bool Delete(int reqId)
        {
            MedRequest mr = new MedRequest();
            int numAffected = mr.Delete(reqId);
            if (numAffected >= 2)
                return true;
            else
                return false;
        }
    }
}
