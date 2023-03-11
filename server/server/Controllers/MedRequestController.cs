using Microsoft.AspNetCore.Mvc;
using server.Models;
using System.Text.Json;
using Newtonsoft.Json;

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
            string[] depTypes = medReq.GetProperty("depTypes").EnumerateArray().Select(x => x.GetString()).ToArray();
            int cDep = medReq.GetProperty("cDep").GetInt32();
            int cUser = medReq.GetProperty("cUser").GetInt32();
            int medId = medReq.GetProperty("medId").GetInt32();
            float reqQty = (float)medReq.GetProperty("reqQty").GetSingle();

            MedRequest mr = new MedRequest();
            return mr.InsertReq(cUser, cDep, medId, reqQty, depTypes);

            //swagger exp: {"cUser": 45, "cDep": 3, "medId": 8, "reqQty": 5, "depTypes": ["כירורגיה"]}
        }


        //// PUT api/<MedRequestController>/5
        //[HttpPut("WattingReq/{reqId}")]
        //public bool PutWatting(int reqId, [FromBody] JsonElement medReq)
        //{
        //    string[] depTypes = medReq.GetProperty("depTypes").EnumerateArray().Select(x => x.GetString()).ToArray();
        //    int cDep = medReq.GetProperty("cDep").GetInt32();
        //    int cUser = medReq.GetProperty("cUser").GetInt32();
        //    int medId = medReq.GetProperty("medId").GetInt32();
        //    float reqQty = (float)medReq.GetProperty("reqQty").GetSingle();

        //    MedRequest mr = new MedRequest();
        //    return mr.UpdateWattingReq(reqId, cUser, cDep, medId, reqQty, depTypes);
        //}

        //// PUT api/<MedRequestController>/5
        //[HttpPut("WaittingReq/{reqId}")]
        //public bool PutWatting(int reqId, [FromBody] MedRequest mr, string[] depTypes)
        //{
        //    mr.ReqId = reqId;
        //    return mr.UpdateWaittingReq(depTypes);
        //}


        // PUT api/<MedRequestController>/5
        [HttpPut("WaittingReq/{reqId}")]
        public bool PutWaitting(int reqId, [FromBody] JsonElement medReq)
        {
            string[] depTypes = medReq.GetProperty("depTypes").EnumerateArray().Select(x => x.GetString()).ToArray();
            //MedRequest mr = JsonSerializer.Deserialize<MedRequest>(medReq.GetProperty("medRequest").ToString());

            string json = medReq.GetProperty("medRequest").ToString();
            MedRequest mr = JsonConvert.DeserializeObject<MedRequest>(json);

            mr.ReqId = reqId;
            return mr.UpdateWaittingReq(depTypes);
        }

    //    {
    //  "medRequest": {
    //    "reqId": 0,
    //    "cUser": 44,
    //    "aUser": 0,
    //    "cDep": 3,
    //    "aDep": 0,
    //    "medId": 7,
    //    "reqQty": 50,
    //    "reqStatus": "W",
    //    "reqDate": "2023-03-12T15:28:45.17"
    //  },
    //  "depTypes":  ["כירורגיה"]
    //}



    // DELETE api/<MedRequestController>/5
    [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
