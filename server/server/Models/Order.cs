namespace server.Models
{
    public class Order
    {
        //fields
        public int orderId;
        public int depId;
        public int pUser;
        public string reportNum;
        public char status;
        public DateTime orderDate;
        public DateTime lastUpdate;
        private List<MedOrder> medList;

        //properties
        public int OrderId { get => orderId; set => orderId = value; }
        public int DepId { get => depId; set => depId = value; }
        public int PUser { get => pUser; set => pUser = value; }
        public string ReportNum { get => reportNum; set => reportNum = value; }
        public char Status { get => status; set => status = value; }
        public DateTime OrderDate { get => orderDate; set => orderDate = value; }
        public DateTime LastUpdate { get => lastUpdate; set => lastUpdate = value; }
        public List<MedOrder> MedList { get => medList; set => medList = value; }


        //constructors
        public Order() { }
        public Order(int orderId, int depId, int pUser, string reportNum, char status, DateTime orderDate, DateTime lastUpdate)
        {
            this.orderId = orderId;
            this.depId = depId;
            this.pUser = pUser;
            this.reportNum = reportNum;
            this.status = status;
            this.orderDate = orderDate;
            this.lastUpdate = lastUpdate;
            this.MedList = new List<MedOrder>();
        }
    }
}
