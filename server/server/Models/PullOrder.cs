using System;

namespace server.Models
{
    public class PullOrder : Order
    {
        //field
        int nUser;

        //property
        public int NUser { get => nUser; set => nUser = value; }

        //constructors
        public PullOrder() : base()
        { }
        public PullOrder(int orderId, int depId, int nUser, int pUser, string reportNum, char status, DateTime orderDate,
                         DateTime lastUpdate) : base(orderId, depId, pUser, reportNum, status, orderDate, lastUpdate)
        { this.nUser = nUser; }

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
