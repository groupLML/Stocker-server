using System;

namespace server.Models
{
    public class Norm
    {
        //fields
        int normId;
        int depId;
        DateTime lastUpdate;

        //properties
        public int NormId { get => normId; set => normId = value; }
        public int DepId { get => depId; set => depId = value; }
        public DateTime LastUpdate { get => lastUpdate; set => lastUpdate = value; }

        //constructors
        public Norm() { }

        public Norm(int normId, int depId, DateTime lastUpdate)
        {
            this.normId = normId;
            this.depId = depId;
            this.lastUpdate = lastUpdate;
        }


        //methodes
        public int Insert()
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

    }
}
