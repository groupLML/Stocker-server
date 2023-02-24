namespace server.Models
{
    public class PullMedOrder
    {

        //fields
        int pullId;
        int medId;
        float poQty;
        float supQty;
        string mazNum;

        //properties
        public int PullId { get => pullId; set => pullId = value; }
        public int MedId { get => medId; set => medId = value; }
        public float PoQty { get => poQty; set => poQty = value; }
        public float SupQty { get => supQty; set => supQty = value; }
        public string MazNum { get => mazNum; set => mazNum = value; }


        //constructors
        public PullMedOrder() { }
        public PullMedOrder(int pullId, int medId, float poQty, float supQty, string mazNum)
        {
            this.pullId = pullId;
            this.medId = medId;
            this.poQty = poQty;
            this.supQty = supQty;
            this.mazNum = mazNum;
        }


        //methodes
        public int Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertPullMedOrder(this);
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdatePullMedOrder(this);
        }

        public List<PullMedOrder> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadPullMedOrders();
        }
    }
}
