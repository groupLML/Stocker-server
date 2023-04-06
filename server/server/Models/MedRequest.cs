﻿using System;
using System.Collections.Generic;
using System.Runtime.ConstrainedExecution;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace server.Models
{
    public class MedRequest
    {
        //fields
        int reqId;
        int cUser;
        int aUser;
        int cDep;
        int aDep;
        int medId;
        float reqQty;
        char reqStatus;
        DateTime reqDate;

        //properties
        public int ReqId { get => reqId; set => reqId = value; }
        public int CUser { get => cUser; set => cUser = value; }
        public int AUser { get => aUser; set => aUser = value; }
        public int CDep { get => cDep; set => cDep = value; }
        public int ADep { get => aDep; set => aDep = value; }
        public int MedId { get => medId; set => medId = value; }
        public float ReqQty { get => reqQty; set => reqQty = value; }
        public char ReqStatus { get => reqStatus; set => reqStatus = value; }
        public DateTime ReqDate { get => reqDate; set => reqDate = value; }


        //constructors
        public MedRequest() { }
        public MedRequest(int reqId, int cUser, int aUser, int cDep, int aDep, int medId, float reqQty, char reqStatus, DateTime reqDate)
        {
            this.reqId = reqId;
            this.cUser = cUser;
            this.aUser = aUser;
            this.cDep = cDep;
            this.aDep = aDep;
            this.medId = medId;
            this.reqQty = reqQty;
            this.reqStatus = reqStatus;
            this.reqDate = reqDate;
        }

        //methodes
        public int InsertReq(int cUser, int cDep, int medId, float reqQty, string[] depTypes)
        {
            DBservices dbs = new DBservices();
            List<MedRequest> ReqList = dbs.ReadMedRequests();
            List<Department> DepList = dbs.ReadDeps();
            List<int> DepAsked = new List<int>();

            foreach (MedRequest mr in ReqList) //בדיקה אם הבקשה לתרופה זו עבור מחלקה זו לא קיימת כבר
            {
                if (cDep == mr.CDep && medId == mr.MedId && mr.ReqStatus == 'W')
                    return -1;
            }

            MedRequest medReq = new MedRequest(0, cUser, 0, cDep, 0, medId, reqQty, 'W', DateTime.Now);

            foreach (Department dep in DepList) //יצירת רשימת מספרי מחלקות שאליהן נשלחת הבקשה
            {
                for (int i = 0; i < depTypes.Length; i++)
                {
                    if (depTypes[i] == dep.DepType && cDep != dep.DepId)
                        DepAsked.Add(dep.DepId);
                }
            }
            return dbs.InsertMedRequest(medReq, DepAsked);
        }

        public int UpdateWaitingReq(string[] depTypes)
        {
            DBservices dbs = new DBservices();
            List<MedRequest> ReqList = dbs.ReadMedRequests();
            List<Department> DepList = dbs.ReadDeps();
            List<int> DepAsked = new List<int>();

            foreach (Department dep in DepList) //יצירת רשימת מספרי מחלקות שאליהן נשלחת הבקשה
            {
                for (int i = 0; i < depTypes.Length; i++)
                {
                    if (depTypes[i] == dep.DepType && cDep != dep.DepId)
                        DepAsked.Add(dep.DepId);
                }
            }

            foreach (MedRequest mr in ReqList) 
            {
                if (this.ReqId == mr.ReqId && mr.ReqStatus == 'W') //עדכון בקשה יתבצע רק במידה והבקשה במצב "המתנה"
                    return dbs.UpdateMedRequestWaiting(this, DepAsked);
            }
            return -1;
        }

        public int UpdateApprovedReq(int reqId, int aUser, int aDep)
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateMedRequestApproved(reqId, aUser, aDep);
        }

        public int Delete(int reqId)
        {
            DBservices dbs = new DBservices();
            List<MedRequest> ReqList = dbs.ReadMedRequests();

            foreach (MedRequest mr in ReqList)
            {
                if (reqId == mr.ReqId && mr.ReqStatus == 'W') //מחיקת בקשה תתבצע רק במידה והבקשה במצב "המתנה"
                    return dbs.DeleteMedRequest(reqId);
            }
            return 0;
        }

        public List<MedRequest> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadMedRequests();
        }

        public Object ReadRequestsMine(int depId) //טבלה בקשות ממחלקות עבור המחלקה של אותה אחות מחוברת
        {
            DBservices dbs = new DBservices();
            return dbs.ReadMedRequestsNurseMine(depId);
        }

        public Object ReadRequestsOthers(int depId) //טבלת בקשות של מחלקות אחרות עבור אותה מחלקה
        {
            DBservices dbs = new DBservices();
            return dbs.ReadDepRequestsNurseOthers(depId);
        }
    }
}
