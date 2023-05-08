using System;

namespace server.Models
{
    public class Message
    {

        //fields
        int msgId;
        int userId;
        string msg;
        DateTime msgDate;


        //properties
        public int MsgId { get => msgId; set => msgId = value; }
        public int UserId { get => userId; set => userId = value; }
        public string Msg { get => msg; set => msg = value; }
        public DateTime MsgDate { get => msgDate; set => msgDate = value; }

        //constructors
        public Message() { }
        public Message(int msgId, int userId, string msg, DateTime msgDate)
        {
            this.msgId = msgId;
            this.userId = userId;
            this.msg = msg;
            this.msgDate = msgDate;
        }


        //methodes
        public int Insert()
        {
            if (this.Msg == "")
                return 0;
            else
            {
                DBservices dbs = new DBservices();
                return dbs.InsertMessage(this);
            }
        }

        public int Update()
        {
            DBservices dbs = new DBservices();
            return dbs.UpdateMessage(this);
        }

        public Object Read()
        {
            DBservices dbs = new DBservices();
            return dbs.ReadMessages();
        }

        public int Delete(int msgId)
        {
            DBservices dbs = new DBservices();
            return dbs.DeleteMessage(msgId);
        }
    }
}
