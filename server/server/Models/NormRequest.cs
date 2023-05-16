using System;
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
        char reqStatus;

        //for Read
        int depId;
        string depName;
        string fullName;
        char jobType;
        
        private List<MedNormRequest> medReqList;

        //properties
        public int ReqId { get => reqId; set => reqId = value; }
        public int NormId { get => normId; set => normId = value; }
        public DateTime ReqDate { get => reqDate; set => reqDate = value; }
        public int UserId { get => userId; set => userId = value; }
        public char ReqStatus { get => reqStatus; set => reqStatus = value; }
        public int DepId { get => depId; set => depId = value; }
        public string DepName { get => depName; set => depName = value; }
        public string FullName { get => fullName; set => fullName = value; }
        public char JobType { get => jobType; set => jobType = value; }
        public List<MedNormRequest> MedReqList { get => medReqList; set => medReqList = value; }


        //constructors
        public NormRequest() { }
        public NormRequest(int reqId,int normId, DateTime reqDate, int userId,string fullName, char jobType, int depId, string depName, char reqStatus, List<MedNormRequest> medList)
        {
            this.reqId = reqId;
            this.NormId = normId;
            this.userId = userId; 
            this.fullName = fullName;
            this.jobType = jobType;
            this.depId = depId;
            this.depName = depName;
            this.ReqDate = reqDate;
            this.ReqStatus = reqStatus;
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
            return dbs.ReadDepNormRequests(depId);
            //return dbs.ReadNormRequests();
        }
    }
}
