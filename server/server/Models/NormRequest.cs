using System;
using System.Collections.Generic;

namespace server.Models
{
    public class NormRequest
    {
        //fields

        //for DB
        int reqId;
        int normId;
        DateTime reqDate;
        int userId;
        string reqStatus;

        //for Read
        int depId;
        string depName;
        string fullName;
        string position;
        

        private List<MedNormRequest> medReqList;

        //properties
        public int ReqId { get => reqId; set => reqId = value; }
        public int NormId { get => normId; set => normId = value; }
        public DateTime ReqDate { get => reqDate; set => reqDate = value; }
        public int UserId { get => userId; set => userId = value; }
        public string ReqStatus { get => reqStatus; set => reqStatus = value; }
        public int DepId { get => depId; set => depId = value; }
        public string DepName { get => depName; set => depName = value; }
        public string FullName { get => fullName; set => fullName = value; }
        public string Position { get => position; set => position = value; }
        public List<MedNormRequest> MedReqList { get => medReqList; set => medReqList = value; }
        


        //constructors
        public NormRequest() { }
        public NormRequest(int reqId,int normId, DateTime reqDate, int userId,string fullName, string position, int depId, string depName, string reqStatus, List<MedNormRequest> medList)
        {
            this.ReqId = reqId;
            this.NormId = normId;
            this.UserId = userId; 
            this.FullName = fullName;
            this.Position = position;
            this.DepId = depId;
            this.DepName = depName;
            this.ReqDate = reqDate;
            this.ReqStatus = reqStatus;
            if (medList != null)
                this.MedReqList = medList;
            else
                this.MedReqList = new List<MedNormRequest>();
        }

        public NormRequest(int reqId, int normId, int userId)
        {
            this.ReqId = reqId;
            this.NormId = normId;
            this.UserId = userId;
        }


        //methodes
        public bool Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertNormRequest(this);
        }

        public bool Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateNormRequest(this);
        }

        public List<NormRequest> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadNormRequests();
        }

        public List<NormRequest> ReadDepNormReq(int depId)
        {
            DBservices dbs = new DBservices();
            return dbs.ReadDepNormRequestsPrediction(depId);
        }


        public bool UpdateManager(List<MedNorm> mn)
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateNormRequestManager(mn, this);
        }

        public int UpdateComplete(int reqId)
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateNormRequestComplete(reqId);
        }

    }
}
