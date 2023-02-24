using System;

namespace server.Models
{
    public class Medicine
    {
        //fields
        int medId;
        string genName;
        string comName;
        int ea;
        string unit;
        string method;
        string atc;
        string mazNum;
        string chamNum;
        bool medStatus;
        DateTime lastUpdate;

        //properties
        public int MedId { get => medId; set => medId = value; }
        public string GenName { get => genName; set => genName = value; }
        public string ComName { get => comName; set => comName = value; }
        public int Ea { get => ea; set => ea = value; }
        public string Unit { get => unit; set => unit = value; }
        public string Method { get => method; set => method = value; }
        public string Atc { get => atc; set => atc = value; }
        public string MazNum { get => mazNum; set => mazNum = value; }
        public string ChamNum { get => chamNum; set => chamNum = value; }
        public bool MedStatus { get => medStatus; set => medStatus = value; }
        public DateTime LastUpdate { get => lastUpdate; set => lastUpdate = value; }

        //constructors
        public Medicine() { }
        public Medicine(int medId, string genName, string comName, int ea, string unit, string method, string atc, string mazNum, string chamNum, bool medStatus, DateTime lastUpdate)
        {
            this.medId = medId;
            this.genName = genName;
            this.comName = comName;
            this.ea = ea;
            this.unit = unit;
            this.method = method;
            this.atc = atc;
            this.mazNum = mazNum;
            this.chamNum = chamNum;
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

   
        public List<Medicine> ReadActive() //read only active medicines
        {
            DBservices dbs = new DBservices();
            List<Medicine> medList= dbs.ReadMeds();
            List<Medicine> newList = new List<Medicine>();

            foreach (Medicine med in medList)
            {
                if (med.MedStatus== true)
                {
                    newList.Add(med);
                }
            }
            return newList;
        }


    }
}
