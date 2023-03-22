namespace server.Models
{
    public class MedUsage
    {
        //fields
        int medId;
        int usageId;
        float useQty;
        string chamNum;

        //properties
        public int MedId { get => medId; set => medId = value; }
        public int UsageId { get => usageId; set => usageId = value; }
        public float UseQty { get => useQty; set => useQty = value; }
        public string ChamNum { get => chamNum; set => chamNum = value; }

        //constructors
        public MedUsage() { }

        public MedUsage(int medId, int usageId, float useQty, string chamNum)
        {
            this.medId = medId;
            this.usageId = usageId;
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

        public Object ReadMedUsages(int depId) //טבלה צריכה של מחלקה ספציפית עבור מנהל בית המרקחת
        {
            DBservices dbs = new DBservices();
            return dbs.ReadDepMedUsages(depId);
        }

    }
}
