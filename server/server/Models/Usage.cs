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
        private List<MedUsage> medList;

        //properties
        public int UsageId { get => usageId; set => usageId = value; }
        public int DepId { get => depId; set => depId = value; }
        public string ReportNum { get => reportNum; set => reportNum = value; }
        public DateTime LastUpdate { get => lastUpdate; set => lastUpdate = value; }
        public List<MedUsage> MedList { get => medList; set => medList = value; }


        //constructors
        public Usage() { }
        public Usage(int usageId, int depId, string reportNum, DateTime lastUpdate)
        {
            this.usageId = usageId;
            this.depId = depId;
            this.reportNum = reportNum;
            this.lastUpdate = lastUpdate;
            this.MedList = new List<MedUsage>();
        }


        //methodes
        public bool Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertUsage(this);
        }

        public List<Usage> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadUsages();
        }

        public Object ReadMedUsages(int depId, DateTime startDate, DateTime endDate) //טבלה צריכה של מחלקה ספציפית עבור מנהל בית המרקחת
        {
            DBservices dbs = new DBservices();
            return dbs.ReadDepMedsUsage(depId, startDate, endDate);
        }

        public Object GetDashboardData(int dep, int med, int month, string year)
        {
            DBservices dbs = new DBservices();
            return dbs.ReadData(dep, med, month, year);
        }


    }
}
