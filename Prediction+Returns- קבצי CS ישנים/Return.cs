namespace server.Models
{
    public class Return
    {

        //fields
        int medId;
        int depId;
        DateTime rtnDate;
        int userId;
        float rtnQty;
        string reason;

        //properties
        public int MedId { get => medId; set => medId = value; }
        public int DepId { get => depId; set => depId = value; }
        public DateTime RtnDate { get => rtnDate; set => rtnDate = value; }
        public int UserId { get => userId; set => userId = value; }
        public float RtnQty { get => rtnQty; set => rtnQty = value; }
        public string Reason { get => reason; set => reason = value; }

        //constructors
        public Return() { }
        public Return(int medId, int depId, DateTime rtnDate, int userId, float rtnQty, string reason)
        {
            this.medId = medId;
            this.depId = depId;
            this.rtnDate = rtnDate;
            this.userId = userId;
            this.rtnQty = rtnQty;
            this.reason = reason;
        }


        //methodes
        public int Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertMedReturn(this);
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateMedReturn(this);
        }

        public List<Return> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadMedReturns();
        }
    }
}
