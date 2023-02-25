namespace server.Models
{
    public class User
    {
        //fields
        int userId;
        string username;
        string firstName;
        string lastName;
        string email;
        string password;
        string phone;
        string position;
        char jobType;
        int depId;
        bool isActive;

        //properties
        public int UserId { get => userId; set => userId = value; }
        public string Username { get => username; set => username = value; }
        public string FirstName { get => firstName; set => firstName = value; }
        public string LastName { get => lastName; set => lastName = value; }
        public string Email { get => email; set => email = value; }
        public string Password { get => password; set => password = value; }
        public string Phone { get => phone; set => phone = value; }
        public string Position { get => position; set => position = value; }
        public char JobType { get => jobType; set => jobType = value; }
        public int DepId { get => depId; set => depId = value; }
        public bool IsActive { get => isActive; set => isActive = value; }

        //constructors
        public User() { }

        public User(int userId, string username, string firstName, string lastName, string email, string password, string phone, string position, char jobType, int depId, bool isActive)
        {
            this.userId = userId;
            this.username = username;
            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
            this.password = password;
            this.phone = phone;
            this.position = position;
            this.jobType = jobType;
            this.depId = depId;
            this.isActive = isActive;
        }

        //methodes
        public bool Insert()
        {
            DBservices dbs = new DBservices();
            List<User> UsersList = dbs.ReadUsers();

            foreach (User user in UsersList) //בדיקה אם השם משתמש לא קיים כבר
            {
                if (this.Username == user.Username)
                    return false;
            }
            dbs.InsertUser(this);
            return true;
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateUser(this);
        }

        public List<User> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadUsers();
        }

        public User Login(string username, string password) //בדיקה האם המשתמש loged in
        {
            DBservices dbs = new DBservices();
            List<User> UserList = dbs.ReadUsers();
            User userEmpty = new User();

            foreach (User user in UserList)
            {
                if (username == user.Username && password == user.Password && user.IsActive==true)
                {
                    return user;
                }
            }
            return userEmpty;
        }
    }
}
