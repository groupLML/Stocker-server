using System;
namespace server.Models
{
    public class NormRequest
    {
        //fields
        int reqId;
        int normId;
        DateTime reqDate;
        //int userId;
        char reqStatus;

        User user;
        Department dep;
      

        //char reqStatus;
        //string fullName;
        private List<MedNormRequest> medReqList;

        //properties
        public int ReqId { get => reqId; set => reqId = value; }
        public int NormId { get => normId; set => normId = value; }
        public DateTime ReqDate { get => reqDate; set => reqDate = value; }
        public char ReqStatus { get => reqStatus; set => reqStatus = value; }
        public List<MedNormRequest> MedReqList { get => medReqList; set => medReqList = value; }
        public User User { get => user; set => user = value; }
        public Department Dep { get => dep; set => dep = value; }

        //constructors
        public NormRequest() { }
        public NormRequest(int reqId,int normId, DateTime reqDate, User user, Department dep, char reqStatus, List<MedNormRequest> medList)
        {
            this.reqId = reqId;
            this.normId = normId;
            this.user = user; 
            this.dep = dep;
            this.reqDate = reqDate;
            this.reqStatus = reqStatus;
            if (medList != null)
                this.MedReqList = medList;
            else
                this.MedReqList = new List<MedNormRequest>();
        }

        //methodes
        public bool Insert()
        {
            DBservices dbs = new DBservices();
            //List<NormRequest> NormReqList = dbs.ReadNormRequests();
        
            //foreach (NormRequest nr in NormReqList)
            //{
            //    if (this.dep.DepId == nr.Dep.DepId && this.User.UserId == nr.User.UserId)
            //        return false;
            //}
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
