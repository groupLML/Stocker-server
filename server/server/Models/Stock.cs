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
        public int Insert()
        {
            DBservices dbs = new DBservices();
            return dbs.InsertToStock(this);
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


    }
}
