using System;

namespace server.Models
{
    public class PushOrder
    {
        //fields
        int pushId;
        int pUser;
        int depId;
        string reportNum;
        char pushStatus;
        DateTime pushDate;
        DateTime lastUpdate;

        //properties
        public int PushId { get => pushId; set => pushId = value; }
        public int PUser { get => pUser; set => pUser = value; }
        public int DepId { get => depId; set => depId = value; }
        public string ReportNum { get => reportNum; set => reportNum = value; }
        public char PushStatus { get => pushStatus; set => pushStatus = value; }
        public DateTime PushDate { get => pushDate; set => pushDate = value; }
        public DateTime LastUpdate { get => lastUpdate; set => lastUpdate = value; }

        //constructors
        public PushOrder() { }
        public PushOrder(int pushId, int pUser, int depId, string reportNum, char pushStatus, DateTime pushDate, DateTime lastUpdate)
        {
            this.pushId = pushId;
            this.pUser = pUser;
            this.depId = depId;
            this.reportNum = reportNum;
            this.pushStatus = pushStatus;
            this.pushDate = pushDate;
            this.lastUpdate = lastUpdate;
        }


        //methodes
        public int Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertPushOrder(this);
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdatePushOrder(this);
        }

        public List<PushOrder> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadPushOrders();
        }
    }
}
