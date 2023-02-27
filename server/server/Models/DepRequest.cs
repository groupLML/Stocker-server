namespace server.Models
{
    public class DepRequest
    {
        //fields
        int reqId;
        int cDep;
        int reqDep;
        char reqStatus;

        //properties
        public int ReqId { get => reqId; set => reqId = value; }
        public int CDep { get => cDep; set => cDep = value; }
        public int ReqDep { get => reqDep; set => reqDep = value; }
        public char ReqStatus { get => reqStatus; set => reqStatus = value; }

        //constructors
        public DepRequest() { }
        public DepRequest(int reqId, int cDep, int reqDep, char reqStatus)
        {
            this.reqId = reqId;
            this.cDep = cDep;
            this.reqDep = reqDep;
            this.reqStatus = reqStatus;
        }

        //methodes
        public int Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertDepRequest(this);
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateDepRequest(this);
        }

        public List<DepRequest> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadDepRequests();
        }

        public Object ReadRequests(int depId) //טבלה בקשות של מחלקות אחרות מהמחלקה של אותה אחות מחוברת
        {
            DBservices dbs = new DBservices();
            return dbs.ReadDepRequestsNurseOthers(depId);
        }


    }
}
