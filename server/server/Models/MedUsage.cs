namespace server.Models
{
    public class MedUsage
    {
        //fields
        int medId;
        int useId;
        float useQty;
        string chamNum;

        //properties
        public int MedId { get => medId; set => medId = value; }
        public int UseId { get => useId; set => useId = value; }
        public float UseQty { get => useQty; set => useQty = value; }
        public string ChamNum { get => chamNum; set => chamNum = value; }

        //constructors
        public MedUsage() { }

        public MedUsage(int medId, int useId, float useQty, string chamNum)
        {
            this.medId = medId;
            this.useId = useId;
            this.useQty = useQty;
            this.chamNum = chamNum;
        }


        //methodes
        public int Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertMedUsage(this);
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateMedUsage(this);
        }

        public List<MedUsage> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadMedUsages();
        }
    }
}
