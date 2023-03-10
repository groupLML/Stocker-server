using System;

namespace server.Models
{
    public class Stock
    {

        //fields
        int stcId;
        int medId;
        int depId;
        float stcQty;
        DateTime entryDate;

        //properties
        public int StcId { get => stcId; set => stcId = value; }
        public int MedId { get => medId; set => medId = value; }
        public int DepId { get => depId; set => depId = value; }
        public float StcQty { get => stcQty; set => stcQty = value; }
        public DateTime EntryDate { get => entryDate; set => entryDate = value; }

       
        //constructors
        public Stock() { }
        public Stock(int stcId, int medId, int depId, float stcQty, DateTime entryDate)
        {
            this.stcId = stcId;
            this.medId = medId;
            this.depId = depId;
            this.stcQty = stcQty;
            this.entryDate = entryDate;
        }


        //methodes
        public bool Insert()
        {
            DBservices dbs = new DBservices();
            List<Medicine> MedList = dbs.ReadMeds();


            foreach (Medicine med in MedList) //בדיקה אם התרופה המבוקשת פעילה
            {
                if (this.MedId == med.MedId && med.MedStatus == false)
                    return false;
            }

            dbs.InsertToStock(this);
            return true;
        }


        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateStock(this);
        }

        public List<Stock> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadStocks();
        }

        public Object ReadDepStocks(int depId) //טבלת מחסן מחלקתי
        {
            DBservices dbs = new DBservices();
            return dbs.ReadDepStocks(depId);
        }

    }
}
