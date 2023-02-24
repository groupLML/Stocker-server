CREATE TABLE [Departments] (
	[depId] smallint IDENTITY (0,1),
    [depName] nvarchar(30) NOT NULL,
	[depPhone] char (9) unique check (depPhone like('04'+replicate('[0-9]',7))) NOT NULL,
	[depType] nvarchar(30) check(depType in(N'כירורגיה', N'מערכות מידע', N'אורטופדיה', N'פנימית', N'בית מרקחת')) NOT NULL,
	Primary key (depId) 
)
--(N'כירורגיה', N'מערכות מידע', N'אורטופדיה', N'פנימית', N'בית מרקחת')


CREATE TABLE [Users] (
	[userId] smallint IDENTITY (1,1),
	[username] varchar(30) unique,
    [firstName] nvarchar(20) NOT NULL,
    [lastName] nvarchar(20) NOT NULL,
	[email] nvarchar(50) check(email like '[0-9a-zA-Z]%@__%.__%') NOT NULL,
	--[email] nvarchar(30) check(email like '[0-9a-zA-Z]%@hymc.gov.il'),
	[password] char(8) NOT NULL,
	[phone] char (10) unique check (phone like('05'+replicate('[0-9]',8))) NOT NULL,
	[position] nvarchar(30),
	[jobType] char(1) check(jobType in('F', 'N', 'A')) NOT NULL, 
	[depId] smallint REFERENCES [Departments](depId) NOT NULL, 
	Primary key (userId) 
)


CREATE TABLE [Units] (
    [unit] varchar(10) Primary key
)


CREATE TABLE [Medicines] (
	[medId] smallint IDENTITY (1,1),
    [genName] nvarchar(100) NOT NULL,
    [comName] nvarchar(100) NOT NULL,
	[ea] smallint check(ea>0) NOT NULL,
	[unit] varchar(10) REFERENCES [Units](unit) NOT NULL,
	[method] varchar(5) NOT NULL,
	[atc] varchar(10) NOT NULL,
	[mazNum] varchar(10) NOT NULL,
	[chamNum] varchar(10) NOT NULL,
	[medIsActive] bit default 'true',
	[lastUpdate] datetime default GETDATE(),
	Primary key (medId) 
)


CREATE TABLE [Norms] (
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
   	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
	[normQty] real check(normQty>=0) NOT NULL,
	[mazNum] varchar(10) NOT NULL, 
	[lastUpdate] datetime default GETDATE(),
	Primary key (medId, depId) 
)

CREATE TABLE [Usages] (
    [usagId] int IDENTITY (1,1),
   	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
	[reportNum] varchar (10),
	[lastUpdate] datetime default GETDATE(),
	Primary key (usagId) 
)


CREATE TABLE [MedUsage] (
     [medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	 [usagId] int REFERENCES [Usages](usagId) NOT NULL,
     [usagQty] real check(usagQty>0) NOT NULL,
	 [chamNum] varchar(10),
	 Primary key (medId, usagId) 
)


CREATE TABLE [Stocks] (
    [stcId] smallint IDENTITY (1,1),
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
   	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
	[stcQty] real check(stcQty>=0) NOT NULL,
	[entryDate] datetime default GETDATE(),
	Primary key (stcId) 
)


CREATE TABLE [Messages] (
    [msgId] smallint IDENTITY (1,1),
   	[userId] smallint REFERENCES [Users](userId) NOT NULL,
    [msg] nvarchar(100),
	[msgDate] datetime default GETDATE(),
	Primary key (msgId) 
)


CREATE TABLE [Requests] (
    [reqId] smallint IDENTITY (1,1),
   	[cUser] smallint REFERENCES [Users](userId) NOT NULL,
	[aUser] smallint REFERENCES [Users](userId),
	[cDep] smallint REFERENCES [Departments](depId) NOT NULL,
	[aDep] smallint REFERENCES [Departments](depId),
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	[reqQty] real check(reqQty>0) NOT NULL,
	[reqStatus] char(1) check(reqStatus in('A', 'D', 'W')) default 'W',
	[reqDate] datetime default GETDATE(),
	Primary key (reqId)
)


CREATE TABLE [Returns] (
    [rtnId] smallint IDENTITY (1,1),
   	[userId] smallint REFERENCES [Users](userId) NOT NULL,
	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
	[rtnDate] datetime default GETDATE() NOT NULL,
	Primary key (rtnId) 
)


CREATE TABLE [MedReturn] (
    [rtnId] smallint REFERENCES [Returns](rtnId) NOT NULL,
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
    [reason] nvarchar(10) check(reason in(N'הוזמן בטעות', N'חוסר שימוש', N'פג תוקף', N'פגום')) NOT NULL,
	[rtnQty] real check(rtnQty>0) NOT NULL,
	Primary key (rtnId, medId) 
)
--('הוזמן בטעות', 'חוסר שימוש', 'פג תוקף', 'פגום')


CREATE TABLE [PushOrders] (
    [pushId] smallint IDENTITY (1,1),
	[pUser] smallint REFERENCES [Users](userId),
	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
	[reportNum] varchar (10),
	[pushStatus] char(1) check(pushStatus in('A', 'S')) NOT NULL,
	[pushDate] datetime NOT NULL,
	[lastUpdate] datetime default GETDATE(),
	Primary key (pushId) 
)


CREATE TABLE [PullOrders] (
    [pullId] smallint IDENTITY (1,1),
	[pUser] smallint REFERENCES [Users](userId),
	[nUser] smallint REFERENCES [Users](userId) NOT NULL,
	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
	[reportNum] varchar (10),
	[pullStatus] char(1) check(pullStatus in('T', 'I', 'W')) default 'W',
	[pullDate] datetime NOT NULL,
	[lastUpdate] datetime default GETDATE(),
	Primary key (pullId)
)


CREATE TABLE [PushMedOrder] (
   	[pushId] smallint REFERENCES [PushOrders](pushId) NOT NULL,
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	[poQty] real check(poQty>0) NOT NULL,
	[supQty] real check(supQty>=0) default 0,
	[mazNum] varchar(10) NOT NULL,
	Primary key (pushId, medId) 
)


CREATE TABLE [PullMedOrder] (
   	[pullId] smallint REFERENCES [PullOrders](pullId) NOT NULL,
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	[poQty] real check(poQty>0) NOT NULL,
	[supQty] real check(supQty>=0) default 0,
	[mazNum] varchar(10) NOT NULL,
	Primary key (pullId, medId) 
)


Select * from [Departments]
Select * from [Users]
Select * from [Units]
Select * from [Medicines]
Select * from [Norms]
Select * from [MedUsage]
Select * from [Stocks]
Select * from [Messages]
Select * from [Requests]
Select * from [Returns]
Select * from [MedReturn]
Select * from [PushOrders]
Select * from [PullOrders]
Select * from [PushMedOrder]
Select * from [PullMedOrder]


--Select * from [Departments]--מחלקות
--Select * from [Users] --משתמשים
--Select * from [Units] --יחידות מידה
--Select * from [Medicines] --תרופות
--Select * from [Norms]-- תקנים מחלקתיים
-- Select * from [MedUsage]--צריכת תרופה
--Select * from [Stocks]--מלאי
--Select * from [Messages] --הודעות
--Select * from [Requests]--בקשות
--Select * from [Returns]--החזרות
--Select * from [MedReturn]--החזרת תרופה
--Select * from [PushOrders]--הזמנות דחיפה
--Select * from [PullOrders]--הזמנות משיכה
--Select * from [PushMedOrder]--תרופות בהזמנת דחיפה
--Select * from [PullMedOrder]--תרופות בהזמנת משיכה