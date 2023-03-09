using System;
using System.Collections.Generic;
using System.Runtime.ConstrainedExecution;

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

        //public int Insert()
        //{
        //    DBservices dbs = new DBservices();
        //    List<MedRequest> List = dbs.ReadMedRequests();
        //    List<Medicine> MedList = dbs.ReadMeds();


        //    foreach (Medicine med in MedList) //בדיקה אם התרופה המבוקשת פעילה
        //    {
        //        if (this.MedId == med.MedId && med.MedStatus==false)
        //            return 0;
        //    }

        //    foreach (MedRequest mr in List) //בדיקה אם הבקשה לתרופה זו עבור מחלקה זו לא קיימת כבר
        //    {
        //        if (this.CDep==mr.CDep && this.MedId == mr.MedId && this.ReqStatus == 'W')
        //            return 0;
        //    }
        //    return dbs.InsertMedRequest(this);
        //}


        public bool InsertReq(int cUser, int cDep, int medId, float reqQty, DateTime reqDate, string[] depTypes)
        {
            DBservices dbs = new DBservices();
            List<MedRequest> ReqList = dbs.ReadMedRequests();
            //List<Medicine> MedList = dbs.ReadMeds();
            List<Department> DepList = dbs.ReadDeps();

            //foreach (Medicine med in MedList) //בדיקה אם התרופה המבוקשת פעילה
            //{
            //    if (medId == med.MedId && med.MedStatus == false)
            //        return false;
            //}

            foreach (MedRequest mr in ReqList) //בדיקה אם הבקשה לתרופה זו עבור מחלקה זו לא קיימת כבר
            {
                if (cDep == mr.CDep && this.MedId == mr.MedId && mr.ReqStatus == 'W')
                    return false;
            }

            MedRequest medReq = new MedRequest(0, cUser, 56, cDep, 1, medId, reqQty, 'W', reqDate);
            int reqId=dbs.InsertMedRequest(medReq);

            foreach (Department dep in DepList) //הכנסת בקשה לטבלת DepRequests   
            {
                for (int i = 0; i < depTypes.Length; i++)
                {
                    if (depTypes[i]== dep.DepType)
                        dbs.InsertDepRequest(reqId, cDep, dep.DepId);
                }      
            }

            return true;
        }



        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateMedRequest(this);
        }

        public List<MedRequest> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadMedRequests();
        }

        public Object ReadRequests(int depId) //טבלה בקשות ממחלקות עבור המחלקה של אותה אחות מחוברת
        {
            DBservices dbs = new DBservices();
            return dbs.ReadMedRequestsNurseMine(depId);
        }
    }
}
