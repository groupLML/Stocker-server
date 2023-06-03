using Microsoft.AspNetCore.Mvc;
using server.Models;
using System.Net;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsageController : ControllerBase
    {
        // GET: api/<UsageController>
        [HttpGet]
        public IEnumerable<Usage> Get()
        {
            Usage use = new Usage();
            return use.Read();
        }

        // GET api/<UsageController>/5
        [HttpGet("/GetDepUsage/dep/{dep}/start/{start}/end/{end}")]
        public Object GetMedUsages(int dep, DateTime start, DateTime end)
        {
            Usage use = new Usage();
            return use.ReadMedUsages(dep, start,end);
        }

        // GET: api/<UsageController>
        [HttpGet("/Prediction/month/{month}/dep/{dep}/med/{med}")]
        public double[] GetPrediction(int month, int dep, int med)
        {
            Prediction p= new Prediction(); 
            return p.GetPrediction(month,dep, med);
        }


        // GET api/<UsageController>/5
        [HttpGet("/GetDashboard/interval/{interval}")]
        public Object GetDashboard(int interval)
        {
            Usage use = new Usage();
            return use.ReadBoxsData(interval);
        }

        // GET: api/<UsageController>
        [HttpGet("/NormMedPrediction/dep/{dep}/med/{med}")]
        public int GetNormPrediction(int dep, int med)
        {
            NormPredictions p = new NormPredictions();
            return (int)p.MedNormPrediction(dep, med);
        }


        // POST api/<UsageController>
        [HttpPost]
        public bool Post([FromBody] Usage use)
        {
            return use.Insert();
          
        }

        // PUT api/<UsageController>/5
        [HttpPut("{usageId}")]
        public void Put(int usageId, [FromBody] Usage use)
        {
          
        }

        // DELETE api/<UsageController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }



        // GET api/<UsageController>/5
        [HttpGet("/GetData/dep/{dep}/med/{med}/year/{year}")]
        public Object GetData(int dep, int med, int year)
        {
            DBservices dbs = new DBservices();
            return dbs.ReadLineChart(dep, med, year);
        }
    }
}
