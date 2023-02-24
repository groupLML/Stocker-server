using System;

namespace server.Models
{
    public class PullOrder
    {
        //fields
        int pullId;
        int pUser;
        int nUser;
        int depId;
        string reportNum;
        char pullStatus;
        DateTime pullDate;
        DateTime lastUpdate;

        //properties
        public int PullId { get => pullId; set => pullId = value; }
        public int PUser { get => pUser; set => pUser = value; }
        public int NUser { get => nUser; set => nUser = value; }
        public int DepId { get => depId; set => depId = value; }
        public string ReportNum { get => reportNum; set => reportNum = value; }
        public char PullStatus { get => pullStatus; set => pullStatus = value; }
        public DateTime PullDate { get => pullDate; set => pullDate = value; }
        public DateTime LastUpdate { get => lastUpdate; set => lastUpdate = value; }


        //constructors
        public PullOrder() { }
        public PullOrder(int pullId, int pUser, int nUser, int depId, string reportNum, char pullStatus, DateTime pullDate, DateTime lastUpdate)
        {
            this.pullId = pullId;
            this.pUser = pUser;
            this.nUser = nUser;
            this.depId = depId;
            this.reportNum = reportNum;
            this.pullStatus = pullStatus;
            this.pullDate = pullDate;
            this.lastUpdate = lastUpdate;
        }


        //methodes
        public int Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertPullOrder(this);
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdatePullOrder(this);
        }

        public List<PullOrder> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadPullOrders();
        }
    }
}
