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
        public Order(int orderId, int depId, int pUser, string reportNum, char status, DateTime orderDate, DateTime lastUpdate, List<MedOrder> medList)
        {
            this.orderId = orderId;
            this.depId = depId;
            this.pUser = pUser;
            this.reportNum = reportNum;
            this.status = status;
            this.orderDate = orderDate;
            this.lastUpdate = lastUpdate;
            if (medList != null)
                this.MedList = medList;
            else
                this.MedList = new List<MedOrder>();
        }

        public Object ReadMedsOrder(int orderId, int type) //קריאת פרטי התרופות עבור הזמנה ספציפית 
        {
            DBservices dbs = new DBservices();
            return dbs.ReadOrderDetails(orderId, type);
        }

        public int Delete(int orderId, int type) // מחיקת הזמנה עבור שני סוגי ההזמנות
        {
            DBservices dbs = new DBservices();

            if (type == 2) //pullOrder
            {
                List<PullOrder> OredrsList = dbs.ReadPullOrders();

                foreach (PullOrder pull in OredrsList)
                {
                    if (orderId == pull.OrderId && pull.Status == 'W') //מחיקת הזמנה תתבצע רק במידה וההזמנה במצב "המתנה"
                        return dbs.DeleteOrder(orderId, type);
                }
                return -1;
            }
            else //pushOrder
            {
                List<PushOrder> OredrsList = dbs.ReadPushOrders();

                foreach (PushOrder push in OredrsList)
                {
                    if (orderId == push.OrderId && push.Status == 'R') //מחיקת הזמנה תתבצע רק במידה וההזמנה במצב "שוריין"
                        return dbs.DeleteOrder(orderId, type);
                }
                return -1;
            }
        }
    }
}
