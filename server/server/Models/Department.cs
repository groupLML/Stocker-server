namespace server.Models
{
    public class Department
    {
        //fields
        int depId;
        string depName;
        string depPhone;
        string depType;

        //properties
        public int DepId { get => depId; set => depId = value; }
        public string DepName { get => depName; set => depName = value; }
        public string DepPhone { get => depPhone; set => depPhone = value; }
        public string DepType { get => depType; set => depType = value; }


        //constructors
        public Department() { }

        public Department(int depId, string depName, string depPhone, string depType)
        {
            this.depId = depId;
            this.depName = depName;
            this.depPhone = depPhone;
            this.depType = depType;
        }


        //methodes
        public int Insert()
        {
            DBservices dbs = new DBservices();
            List<Department> List = dbs.ReadDeps();

            foreach (Department dep in List) //בדיקה אם המחלקה לא קיימת כבר
            {
                if (this.DepName == dep.DepName || this.DepPhone == dep.DepPhone)
                    return -1;
            }
            return dbs.InsertDep(this);
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            List<Department> List = dbs.ReadDeps();

            foreach (Department dep in List) //בדיקה אם שם המחלקה לא קיימת כבר במחלקה אחרת
            {
                if ((this.DepName == dep.DepName || this.DepPhone == dep.DepPhone) && dep.DepId != this.DepId)
                    return -1;
            }
            return dbs.UpdateDep(this);
        }

        public List<Department> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadDeps();
        }
    }
}
