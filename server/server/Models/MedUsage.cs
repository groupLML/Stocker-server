namespace server.Models
{
    public class MedUsage
    {
        //fields
        int medId;
        float useQty;
        string chamNum;

        //properties
        public int MedId { get => medId; set => medId = value; }
        public float UseQty { get => useQty; set => useQty = value; }
        public string ChamNum { get => chamNum; set => chamNum = value; }

        //constructors
        public MedUsage() { }

        public MedUsage(int medId, float useQty, string chamNum)
        {
            this.medId = medId;
            this.useQty = useQty;
            this.chamNum = chamNum;
        }
    }
}
