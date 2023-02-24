using System;
namespace server.Models
{
    public class NormRequest
    {
        //fields
        int normId;
        int medId;
        DateTime ncrDate;
        int userId;
        float ncrQty;

        //properties
        public int NormId { get => normId; set => normId = value; }
        public int MedId { get => medId; set => medId = value; }
        public DateTime NcrDate { get => ncrDate; set => ncrDate = value; }
        public int UserId { get => userId; set => userId = value; }
        public float NcrQty { get => ncrQty; set => ncrQty = value; }

        //constructors
        public NormRequest() { }
        public NormRequest(int normId, int medId, DateTime ncrDate, int userId, float ncrQty)
        {
            this.normId = normId;
            this.medId = medId;
            this.userId = userId;
            this.ncrDate = ncrDate;
            this.ncrQty = ncrQty;
        }


        //methodes
        public int Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertNormRequest(this);
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateNormRequest(this);
        }

        public List<NormRequest> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadNormRequests();
        }
    }
}
