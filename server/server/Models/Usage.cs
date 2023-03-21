using System;

namespace server.Models
{
    public class Usage
    {
        //fields
        int usageId;
        int depId;
        //Department depUsage;
        string reportNum;
        DateTime lastUpdate;


        //class MedUsage
        //{
        //    int medId;
        //    int usageId;
        //    float useQty;
        //    string chamNum;
        //}


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

        public Object ReadMedUsages(int depId) //טבלה צריכה של מחלקה ספציפית עבור מנהל בית המרקחת
        {
            DBservices dbs = new DBservices();
            return dbs.ReadDepMedUsages(depId);
        }


    }
}
