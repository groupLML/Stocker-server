using System;
namespace server.Models
{
    public class NormRequest
    {
        //fields
        int reqId;
        int normId;
        DateTime reqDate;
        int userId;
        int depId;
        char reqStatus;
        private List<MedNormRequest> medReqList;

        //properties
        public int ReqId { get => reqId; set => reqId = value; }
        public int NormId { get => normId; set => normId = value; }
        public DateTime ReqDate { get => reqDate; set => reqDate = value; }
        public int UserId { get => userId; set => userId = value; }
        public int DepId { get => depId; set => depId = value; }
        public char ReqStatus { get => reqStatus; set => reqStatus = value; }
        public List<MedNormRequest> MedReqList { get => medReqList; set => medReqList = value; }

        //constructors
        public NormRequest() { }
        public NormRequest(int reqId,int normId, DateTime reqDate, int userId, int depId, char reqStatus, List<MedNormRequest> medList)
        {
            this.reqId = reqId;
            this.normId = normId;
            this.userId = userId; 
            this.depId = depId;
            this.reqDate = reqDate;
            this.reqStatus = reqStatus;
            //this.medReqList = new List<MedNormRequest>();
            if (medList != null)
                this.MedReqList = medList;
            else
                this.MedReqList = new List<MedNormRequest>();
        }

        //methodes
        public bool Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertNormRequest(this);
            //List<NormRequest> NormReqList = dbs.ReadNormRequests();
            /////////////////////////////////////////////////////////////////////
            //foreach (NormRequest normReq in NormReqList) 
            //{
            //    if (this.depId == normReq.depId)
            //        return false;
            //}
        }

        public int Update()
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
            //return dbs.ReadDepNormReq(depId);
            return dbs.ReadNormRequests();
        }
    }
}
