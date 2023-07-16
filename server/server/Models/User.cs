using Microsoft.AspNetCore.Mvc;
using System.Runtime.Intrinsics.Arm;

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
        string emailP;
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
        public string EmailP { get => emailP; set => emailP = value; }
        public string Password { get => password; set => password = value; }
        public string Phone { get => phone; set => phone = value; }
        public string Position { get => position; set => position = value; }
        public char JobType { get => jobType; set => jobType = value; }
        public int DepId { get => depId; set => depId = value; }
        public bool IsActive { get => isActive; set => isActive = value; }

        //constructors
        public User() { }

        public User(int userId, string username, string firstName, string lastName, string email, string emailP, string password, string phone, string position, char jobType, int depId, bool isActive)
        {
            this.userId = userId;
            this.username = username;
            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
            this.emailP = emailP;
            this.password = password;
            this.phone = phone;
            this.position = position;
            this.jobType = jobType;
            this.depId = depId;
            this.isActive = isActive;
        }

        //methodes
        public int Insert()
        {
            DBservices dbs = new DBservices();
            List<User> UsersList = dbs.ReadUsersList();

            foreach (User user in UsersList) //בדיקה אם השם משתמש לא קיים כבר במשתמש אחר
            {
                if (this.Username == user.Username)
                    return -1;
            }
            return dbs.InsertUser(this);
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            List<User> UsersList = dbs.ReadUsersList();

            foreach (User user in UsersList) //בדיקה אם השם משתמש לא קיים כבר
            {
                if ((this.Username == user.Username) && user.UserId != this.UserId)
                    return -1;
            }
            return dbs.UpdateUser(this);
        }

        public List<User> Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadUsersList();
        }

        public Object ReadUsers()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadUsersPharm();
        }

        public User Login(string username, string password) //בדיקה האם המשתמש loged in
        {
            DBservices dbs = new DBservices();
            List<User> UserList = dbs.ReadUsersList();
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


        //**************** Token React****************//
        public List<string> ReadToken(int depId)
        {
            DBservices dbs = new DBservices();
            return dbs.ReadToken(depId);
        }

        public int UpdateToken(int userId, string token)
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateToken(userId, token);
        }
    }
}
