using System;

namespace server.Models
{
    public class Norm
    {
        //fields
        int normId;
        int depId;
        DateTime lastUpdate;

        //class MedNorm
        //{
        //    int normId;
        //    int medId;
        //    float normQty;
        //    string mazNum;
        //    bool inNorm;
        //}

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

        public Object ReadDepMedNorms(int depId) //טבלת תקן מחלקתי
        {
            DBservices dbs = new DBservices();
            return dbs.ReadDepMedNorms(depId);
        }

        //public bool InsertMedNorm()
        //{
        //    DBservices dbs = new DBservices();
        //    List<Medicine> MedList = dbs.ReadMeds();

        //    foreach (Medicine med in MedList) //בדיקה אם התרופה המבוקשת פעילה
        //    {
        //        if (this.MedId == med.MedId && med.MedStatus == false)
        //            return false;
        //    }

        //    dbs.InsertMedNorm(this);
        //    return true;
        //}

    }
}
