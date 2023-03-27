using System;

namespace server.Models
{
    public class PushOrder : Order
    {
        //constructors
        public PushOrder() : base() { }
        public PushOrder(int orderId, int depId, int pUser, string reportNum, char status, DateTime orderDate,
                         DateTime lastUpdate) : base(orderId, depId, pUser, reportNum, status, orderDate, lastUpdate) { }

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
