namespace server.Models
{
    public class PushMedOrder
    {

        //fields
        int pushId;
        int medId;
        float poQty;
        float supQty;
        string mazNum;

        //properties
        public int PushId { get => pushId; set => pushId = value; }
        public int MedId { get => medId; set => medId = value; }
        public float PoQty { get => poQty; set => poQty = value; }
        public float SupQty { get => supQty; set => supQty = value; }
        public string MazNum { get => mazNum; set => mazNum = value; }


        //constructors
        public PushMedOrder() { }
        public PushMedOrder(int pushId, int medId, float poQty, float supQty, string mazNum)
        {
            this.pushId = pushId;
            this.medId = medId;
            this.poQty = poQty;
            this.supQty = supQty;
            this.mazNum = mazNum;
        }


        //methodes
        public int Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertPushMedOrder(this);
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdatePushMedOrder(this);
        }

        public List<PushMedOrder> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadPushMedOrders();
        }
    }
}
