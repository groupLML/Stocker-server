using System;
namespace server.Models
{
    public class NormRequest
    {
        //fields
        int reqId;
        int normId;
        DateTime ncrDate;
        int userId;
        int depId;
        char reqStatus;
        private List<MedNormRequest> medReqList;

        //properties
        public int ReqId { get => reqId; set => reqId = value; }
        public int NormId { get => normId; set => normId = value; }
        public DateTime NcrDate { get => ncrDate; set => ncrDate = value; }
        public int UserId { get => userId; set => userId = value; }
        public List<MedNormRequest> MedReqList { get => medReqList; set => medReqList = value; }
        public int DepId { get => depId; set => depId = value; }
        public char ReqStatus { get => reqStatus; set => reqStatus = value; }

        //constructors
        public NormRequest() { }
        public NormRequest(int reqId,int normId, DateTime ncrDate, int userId, int depId, char reqStatus)
        {
            this.reqId = reqId;
            this.normId = normId;
            this.userId = userId; 
            this.depId = depId;
            this.ncrDate = ncrDate;
            this.reqStatus = reqStatus;
            this.medReqList = new List<MedNormRequest>();
        }

        //methodes
        public bool Insert()
        {
            DBservices dbs = new DBservices();
            List<NormRequest> NormReqList = dbs.ReadNormRequests();
            /////////////////////////////////////////////////////////////////////
            //foreach (NormRequest normReq in NormReqList) 
            //{
            //    if (this.depId == normReq.depId)
            //        return false;
            //}
            return dbs.InsertNormRequest(this);
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
