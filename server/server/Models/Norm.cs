using System;
using System.Runtime.ConstrainedExecution;

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
            List<Norm> NormList = dbs.ReadNorms();

            foreach (Norm norm in NormList) //בדיקה אם תקן למחלקה מסויימת לא קיימת כבר
            {
                if (this.depId == norm.depId)
                    return false;
            }
            return dbs.InsertNorm(this); 
        }

        public bool Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateNorm(this);
        }

        public List<Norm> Read() //קריאה של התקנים עם פרטי התרופות בכל תקן
        {
            DBservices dbs = new DBservices();
            return dbs.ReadNorms();
        }

        public List<Norm> ReadDepNorm(int depId) //קריאת פרטי התקן
        {
            DBservices dbs = new DBservices();
            //return dbs.ReadDepNorm(depId);
            return dbs.ReadDepNormPrediction(depId);
        }
    }
}
