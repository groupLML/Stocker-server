using System;

namespace server.Models
{
    public class Medicine
    {
        //fields
        int medId;
        string genName;
        string comName;
        string mazNum;
        int eaQty;
        string unit;
        string method;
        string given;
        bool medStatus;
        DateTime lastUpdate;

        //properties
        public int MedId { get => medId; set => medId = value; }
        public string GenName { get => genName; set => genName = value; }
        public string ComName { get => comName; set => comName = value; }
        public string MazNum { get => mazNum; set => mazNum = value; }
        public int EaQty { get => eaQty; set => eaQty = value; }
        public string Unit { get => unit; set => unit = value; }
        public string Method { get => method; set => method = value; }
        public string Given { get => given; set => given = value; }
        public bool MedStatus { get => medStatus; set => medStatus = value; }
        public DateTime LastUpdate { get => lastUpdate; set => lastUpdate = value; }


        //constructors
        public Medicine() { }
        public Medicine(int medId, string genName, string comName, string mazNum, int eaQty, string unit, string method, string given, bool medStatus, DateTime lastUpdate)
        {
            this.medId = medId;
            this.genName = genName;
            this.comName = comName;
            this.mazNum = mazNum;
            this.eaQty = eaQty;
            this.unit = unit;
            this.method = method;
            this.given = given;
            this.medStatus = medStatus;
            this.lastUpdate = lastUpdate;
        }


        //methodes
        public int Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertMed(this);
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateMed(this);
        }

        public List<Medicine> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadMeds();
        }

        public Object ReadActiveMeds() //read only active medicines with full Names
        {
            DBservices dbs = new DBservices();
            return dbs.ReadMedsFullNames();
        }

        public Object ReadMedsAdmin() //read only active medicines with full Names
        {
            DBservices dbs = new DBservices();
            return dbs.ReadMedsAdmin();
        }

    }
}
