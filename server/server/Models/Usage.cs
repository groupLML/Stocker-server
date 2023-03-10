using System;

namespace server.Models
{
    public class Usage
    {
        //fields
        int usageId;
        int depId;
        string reportNum;
        DateTime lastUpdate;

        //properties
        public int UsageId { get => usageId; set => usageId = value; }
        public int DepId { get => depId; set => depId = value; }
        public string ReportNum { get => reportNum; set => reportNum = value; }
        public DateTime LastUpdate { get => lastUpdate; set => lastUpdate = value; }


        //constructors
        public Usage() { }
        public Usage(int usageId, int depId, string reportNum, DateTime lastUpdate)
        {
            this.usageId = usageId;
            this.depId = depId;
            this.reportNum = reportNum;
            this.lastUpdate = lastUpdate;
        }


        //methodes
        public int Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertUsage(this);
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateUsage(this);
        }

        public List<Usage> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadUsages();
        }
    }
}
