﻿using MathNet.Numerics;
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

        public bool UpdateNurse() //עדכון פרטי הזמנה ע"י האחות כל עוד ההזמנה בסטטוס "בהמתנה"
        {
            DBservices dbs = new DBservices();
            return dbs.UpdatePullOrderNurse(this);
        }

        public bool UpdatePharmIssued() //עדכון פרטי הזמנה ומעבר לסטטוס הונפק ע"י הרוקח
        {
            DBservices dbs = new DBservices();
            return dbs.UpdatePullOrderPharmIssued(this);
        }

        public int UpdatePharmTaken(int pullId, int pUser) //עדכון הזמנה ומעבר לסטטוס בטיפול ע"י הרוקח
        {
            DBservices dbs = new DBservices();
            return dbs.UpdatePullOrderPharmTaken(pullId, pUser);
        }

        public List<PullOrder> Read() //קריאה של הזמנות משיכה עם פרטי התרופות בכל הזמנה
        {
            DBservices dbs = new DBservices();
            return dbs.ReadPullOrders();
        }

        public Object ReadPullOrders(int depId) //קריאה של רשימת הזמנות משיכה עבור המחלקה שנשלחה
        {
            DBservices dbs = new DBservices();
            return dbs.ReadDepPullOrders(depId);
        }

        public Object ReadPullOrdersPharm() //קריאה של רשימת כל הזמנות משיכה הקיימות
        {
            DBservices dbs = new DBservices();
            return dbs.ReadPullOrdersPharm();
        }
    }
}
