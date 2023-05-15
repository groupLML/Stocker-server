namespace server.Models
{
    public class MedNorm
    {
        //fields
        int medId;
        string medName;
        float normQty;
        string mazNum;

        //properties
        public int MedId { get => medId; set => medId = value; }
        public float NormQty { get => normQty; set => normQty = value; }
        public string MazNum { get => mazNum; set => mazNum = value; }
        public string MedName { get => medName; set => medName = value; }

        //constructors
        public MedNorm() { }
        public MedNorm(int medId, string medName, float normQty, string mazNum)
        {
            this.medId = medId;
            this.medName = medName;
            this.normQty = normQty;
            this.mazNum = mazNum;
        }
    }
}
