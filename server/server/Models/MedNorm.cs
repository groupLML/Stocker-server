namespace server.Models
{
    public class MedNorm
    {
        //fields
        int normId;
        int medId;
        string medName;
        float normQty;
        string mazNum;
        bool inNorm;

        //properties
        public int NormId { get => normId; set => normId = value; }
        public int MedId { get => medId; set => medId = value; }
        public float NormQty { get => normQty; set => normQty = value; }
        public string MazNum { get => mazNum; set => mazNum = value; }
        public bool InNorm { get => inNorm; set => inNorm = value; }
        public string MedName { get => medName; set => medName = value; }

        //constructors
        public MedNorm() { }
        public MedNorm(int normId, int medId, string medName, float normQty, string mazNum, bool inNorm)
        {
            this.normId = normId;
            this.medId = medId;
            this.medName = medName;
            this.normQty = normQty;
            this.mazNum = mazNum;
            this.inNorm = inNorm;
        }
    }
}
