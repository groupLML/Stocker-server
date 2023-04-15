using MathNet.Numerics;
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
        public bool Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertPullOrder(this);
        }

        public bool UpdateNurse()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdatePullOrderNurse(this);
        }

        public bool UpdatePharmIssued()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdatePullOrderPharmIssued(this);
        }

        public int UpdatePharmTaken(int pullId, int pUser)
        {
            DBservices dbs = new DBservices();
            return dbs.UpdatePullOrderPharmTaken(pullId, pUser);
        }

        public List<PullOrder> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadPullOrders();
        }

        public Object ReadPullOrders(int depId) //טבלת הזמנות משיכה עבור המחלקה שנשלחה
        {
            DBservices dbs = new DBservices();
            return dbs.ReadPullOrders(depId);
        }


    }
}
