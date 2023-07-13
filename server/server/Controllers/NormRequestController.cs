using Microsoft.AspNetCore.Mvc;
using server.Models;
using System;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NormRequestController : ControllerBase
    {
        // GET: api/<NormRequestController>
        [HttpGet]
        public IEnumerable<NormRequest> Get() //קריאה של התקנים עם פרטי התרופות בכל תקן
        {
            NormRequest nr = new NormRequest();
            return nr.Read();
        }

        // GET api/<NormRequestController>/5
        [HttpGet("depId/{depId}")]
        public List<NormRequest> GetMedsNormReq(int depId)
        {
            NormRequest nr = new NormRequest();
            return nr.ReadDepNormReq(depId);
        }

        // POST api/<NormRequestController>
        [HttpPost]
        public bool Post([FromBody] NormRequest nr)
        {
            return nr.Insert();
        }

        // PUT api/<NormRequestController>/5
        [HttpPut("{reqId}")]
        public bool Put(int reqId, [FromBody] NormRequest nr)
        {
            nr.ReqId = reqId;
            return nr.Update();
        }

        // PUT api/<NormRequestController>/5
        [HttpPut("UpdateComplete/reqId/{reqId}")]
        public bool PutComplete(int reqId)
        {
            NormRequest nr = new NormRequest();
            int num = nr.UpdateComplete(reqId);
            if (num==1)
                return true;
            else
                return false;
        }


        [HttpPut("reqId/{reqId}/normId/{normId}")]
        public bool PutManager(int reqId, int normId, [FromBody] List<MedNorm> mnList)
        {
            NormRequest nm = new NormRequest(reqId, normId, 0);
            return nm.UpdateManager(mnList);
        }
    }
}
