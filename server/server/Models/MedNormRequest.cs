using System;
namespace server.Models
{
    public class MedNormRequest
    {
        //fields

        //for DB
        int medId;
        float reqQty;

        //for read
        string medName;
        float normQty;

        double predQty;

        //properties
        public int MedId { get => medId; set => medId = value; }
        public float ReqQty { get => reqQty; set => reqQty = value; }
        public float NormQty { get => normQty; set => normQty = value; }
        public string MedName { get => medName; set => medName = value; }
        public double PredQty { get => predQty; set => predQty = value; }

        //constructors
        public MedNormRequest() { }
        public MedNormRequest( int medId, string medName, float reqQty, float normQty, double predQty)
        {
            this.medId = medId;
            this.medName = medName;
            this.reqQty = reqQty;
            this.normQty = normQty;
            this.predQty = predQty;
        }
    }
}
