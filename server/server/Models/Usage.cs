using System;

namespace server.Models
{
    public class Usage
    {
        //fields
        int useId;
        int depId;
        string reportNum;
        DateTime lastUpdate;

        //properties
        public int UseId { get => useId; set => useId = value; }
        public int DepId { get => depId; set => depId = value; }
        public string ReportNum { get => reportNum; set => reportNum = value; }
        public DateTime LastUpdate { get => lastUpdate; set => lastUpdate = value; }


        //constructors
        public Usage() { }
        public Usage(int useId, int depId, string reportNum, DateTime lastUpdate)
        {
            this.useId = useId;
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
