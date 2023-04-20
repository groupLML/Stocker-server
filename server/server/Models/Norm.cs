using System;

namespace server.Models
{
    public class Norm
    {
        //fields
        int normId;
        int depId;
        DateTime lastUpdate;
        private List<MedNorm> medList;

        //properties
        public int NormId { get => normId; set => normId = value; }
        public int DepId { get => depId; set => depId = value; }
        public DateTime LastUpdate { get => lastUpdate; set => lastUpdate = value; }

        public List<MedNorm> MedList { get => medList; set => medList = value; }

        //constructors
        public Norm() { }

        public Norm(int normId, int depId, DateTime lastUpdate)
        {
            this.normId = normId;
            this.depId = depId;
            this.lastUpdate = lastUpdate;
            this.MedList = new List<MedNorm>();
        }


        //methodes
        public bool Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertNorm(this);
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateNorm(this);
        }

        public List<Norm> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadNorms();
        }

        public Object ReadDepMedsNorm(int depId) //קריאת פרטי תרופות של תקן מחלקתי
        {
            DBservices dbs = new DBservices();
            return dbs.ReadDepMedsNorm(depId);
        }
    }
}
