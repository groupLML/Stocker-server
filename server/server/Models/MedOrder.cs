namespace server.Models
{
    public class MedOrder
    {

        //fields
        int medId;
        float poQty;
        float supQty;
        string mazNum;

        //properties
        public int MedId { get => medId; set => medId = value; }
        public float PoQty { get => poQty; set => poQty = value; }
        public float SupQty { get => supQty; set => supQty = value; }
        public string MazNum { get => mazNum; set => mazNum = value; }


        //constructors
        public MedOrder() { }
        public MedOrder( int medId, float poQty, float supQty, string mazNum)
        {
            this.medId = medId;
            this.poQty = poQty;
            this.supQty = supQty;
            this.mazNum = mazNum;
        }

    }
}
