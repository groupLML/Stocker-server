using System;
namespace server.Models
{
    public class MedNormRequest
    {
        //fields
        int medId;
        float reqQty;

        string medName;

        //properties

        public int MedId { get => medId; set => medId = value; }
        public float ReqQty { get => reqQty; set => reqQty = value; }
        public string MedName { get => medName; set => medName = value; }

        //constructors
        public MedNormRequest() { }
        public MedNormRequest( int medId, string medName, float reqQty)
        {
            this.medId = medId;
            this.medName = medName;
            this.reqQty = reqQty;
        }
    }
}
