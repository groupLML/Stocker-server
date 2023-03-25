﻿using System;
using System.Collections.Generic;
using System.Runtime.ConstrainedExecution;
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

        public bool UpdateWaittingReq(string[] depTypes)
        {
            DBservices dbs = new DBservices();
            List<MedRequest> ReqList = dbs.ReadMedRequests();
            List<Department> DepList = dbs.ReadDeps();
            int numAffectedTemp = 0;

            foreach (MedRequest mr in ReqList) 
            {
                if (this.ReqId == mr.ReqId && mr.ReqStatus == 'W')
                {
                    numAffectedTemp = dbs.UpdateMedRequest(this);

                    if (numAffectedTemp != 0)
                    {
                        numAffectedTemp = 0;

                        do{ 
                            numAffectedTemp = dbs.DeleteDepRequests(this.ReqId);
                        }
                        while (numAffectedTemp == 0);

                        numAffectedTemp=0;
                        foreach (Department dep in DepList) //הכנסת בקשה מעודכנת לטבלת DepRequests   
                        {
                            for (int i = 0; i < depTypes.Length; i++)
                            {
                                if (depTypes[i] == dep.DepType && this.CDep != dep.DepId)
                                {
                                    do  { //////// לבדוק!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1
                                        numAffectedTemp = dbs.InsertDepRequest(this.ReqId, this.CDep, dep.DepId);
                                    }
                                    while (numAffectedTemp == 0);
                                } 
                            }
                         }
                         return true;
                    }
                }
            }
            return false;
        }

        //public bool UpdateWaittingReq(string[] depTypes)
        //{
        //    DBservices dbs = new DBservices();
        //    List<MedRequest> ReqList = dbs.ReadMedRequests();
        //    List<Department> DepList = dbs.ReadDeps();

        //    foreach (MedRequest mr in ReqList)
        //    {
        //        if (this.ReqId == mr.ReqId && mr.ReqStatus == 'W')
        //        {
        //            dbs.UpdateMedRequest(this);

        //            dbs.DeleteDepRequests(this.ReqId);

        //            foreach (Department dep in DepList) //הכנסת בקשה מעודכנת לטבלת DepRequests   
        //            {
        //                    for (int i = 0; i < depTypes.Length; i++)
        //                    {
        //                        if (depTypes[i] == dep.DepType && this.CDep != dep.DepId)
        //                             dbs.InsertDepRequest(this.ReqId, this.CDep, dep.DepId);
        //                    }
        //            }
        //            return true;
        //        }
        //    }
        //    return false;
        //}





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
