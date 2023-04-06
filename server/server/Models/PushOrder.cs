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
        public bool Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertPushOrder(this);
        }

        public bool Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdatePushOrder(this);
        }

        public List<PushOrder> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadPushOrders();
        }

        public Object ReadPushOrders(int depId) //טבלת הזמנות דחיפה עבור המחלקה שנשלחה
        {
            DBservices dbs = new DBservices();
            return dbs.ReadPushOrders(depId);
        }

    }
}
