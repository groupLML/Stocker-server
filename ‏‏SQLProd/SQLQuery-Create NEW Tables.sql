CREATE TABLE [Departments] (
	[depId] smallint IDENTITY (0,1),
    [depName] nvarchar(30) unique,
	[depPhone] char (9) check (depPhone like('04'+replicate('[0-9]',7))) NOT NULL,
	[depType] nvarchar(11) check(depType in(N'כירורגיה', N'מערכות מידע', N'אורתופדיה', N'פנימית', N'בית מרקחת')) NOT NULL,
	Primary key (depId) 
)


CREATE TABLE [Users] (
	[userId] smallint IDENTITY (0,1),
	[username] varchar(30) unique,
    [firstName] nvarchar(20) NOT NULL,
    [lastName] nvarchar(20) NOT NULL,
	[email] nvarchar(50) check(email like '[0-9a-zA-Z]%@hymc.gov.il') NOT NULL,
	[emailP] nvarchar(50) check(emailP like '[0-9a-zA-Z]%@__%.__%') NOT NULL,
	[password] char(6) NOT NULL,
	[phone] char(10) check (phone like('05'+replicate('[0-9]',8))) NOT NULL,
	[position] nvarchar(30),
	[jobType] char(1) check(jobType in('P','N','A','M')) NOT NULL, 
	[depId] smallint REFERENCES [Departments](depId) NOT NULL, 
	[isActive] bit default 'true',
	Primary key (userId)
)


CREATE TABLE [Medicines] (
	[medId] smallint IDENTITY (1,1),
    [genName] nvarchar(100) NOT NULL,
    [comName] nvarchar(100) NOT NULL,
	[mazNum] varchar(10) NOT NULL,
	[eaQty] smallint check(eaQty>0) NOT NULL,
	[unit] varchar(3) NOT NULL,
	[method] varchar(3) NOT NULL,
	[given] varchar(20) NOT NULL,
	[medStatus] bit default 'true',
	[lastUpdate] datetime default GETDATE(),
	Primary key (medId) 
)


CREATE TABLE [Conversions] (
	[atc] varchar(10) NOT NULL,
	[mazNum] varchar(10) NOT NULL,
	[chamNum] varchar(10) NOT NULL,
	Primary key (atc, mazNum ,chamNum)
)


CREATE TABLE [Norms] (
	[normId] smallint IDENTITY (1,1),
   	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
	[lastUpdate] datetime default GETDATE(),
	Primary key (normId) 
)


CREATE TABLE [MedNorms] (
	[normId] smallint REFERENCES [Norms](normId) NOT NULL,
   	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	[normQty] real check(normQty>=0) NOT NULL,
	[mazNum] varchar(10) NOT NULL, 
	Primary key (normId, medId)
)


CREATE TABLE [NormRequests](
    [reqId] smallint IDENTITY (1,1),
   	[normId] smallint REFERENCES [Norms](normId) NOT NULL,
	[userId] smallint REFERENCES [Users](userId) NOT NULL,
	[reqDate] datetime default GETDATE(),
	[reqStatus] char(1) check(reqStatus in('W','C')) default 'W', 
	Primary key (reqId)
) 

--C=completed, W=waiting

CREATE TABLE [MedNormRequests](
   	[reqId] smallint REFERENCES [NormRequests](reqId) NOT NULL,
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	[reqQty] real check(reqQty>=0) NOT NULL,
	Primary key (reqId,medId)
) 


CREATE TABLE [Usages] (
    [usageId] int IDENTITY (1,1),
   	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
	[reportNum] varchar (10),
	[lastUpdate] datetime default GETDATE(),
	Primary key (usageId) 
)


CREATE TABLE [MedUsages] (
     [medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	 [usageId] int REFERENCES [Usages](usageId) NOT NULL,
     [useQty] real check(useQty>0) NOT NULL,
	 [chamNum] varchar(10),
	 Primary key (medId, usageId) 
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


CREATE TABLE [MedRequests] (
    [reqId] smallint IDENTITY (1,1),
   	[cUser] smallint REFERENCES [Users](userId) NOT NULL,
	[aUser] smallint REFERENCES [Users](userId),
	[cDep] smallint REFERENCES [Departments](depId) NOT NULL,
	[aDep] smallint REFERENCES [Departments](depId),
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	[reqQty] real check(reqQty>0) NOT NULL,
	[reqStatus] char(1) check(reqStatus in('A', 'D', 'W','T')) default 'W',
	[reqDate] datetime default GETDATE(),
	Primary key (reqId)
)

--A=approved, D=decline, W=waiting, T=transference


CREATE TABLE [DepRequests] (
    [reqId] smallint REFERENCES [MedRequests](reqId) NOT NULL,
	[reqDep] smallint REFERENCES [Departments](depId) NOT NULL,
	Primary key (reqId,reqDep)
)


CREATE TABLE [PushOrders] (
    [pushId] int IDENTITY (1,1),
	[pUser] smallint REFERENCES [Users](userId),
	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
	[reportNum] varchar (10),
	[pushStatus] char(1) check(pushStatus in('R', 'I')) NOT NULL,
	[pushDate] datetime NOT NULL,
	[lastUpdate] datetime default GETDATE(),
	Primary key (pushId) 
)

--R=Reserved, I=Issued

CREATE TABLE [PullOrders] (
    [pullId] int IDENTITY (1,1),
	[pUser] smallint REFERENCES [Users](userId),
	[nUser] smallint REFERENCES [Users](userId) NOT NULL,
	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
	[reportNum] varchar (10),
	[pullStatus] char(1) check(pullStatus in('T', 'I', 'W')) default 'W',
	[pullDate] datetime NOT NULL,
	[lastUpdate] datetime default GETDATE(),
	Primary key (pullId)
)

--T=Taken, W=Waiting, I=Issued

CREATE TABLE [PushMedOrders] (
   	[orderId] int REFERENCES [PushOrders](pushId) NOT NULL,
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	[poQty] real check(poQty>0) NOT NULL,
	[supQty] real check(supQty>=0) default 0,
	[mazNum] varchar(10),
	Primary key (orderId, medId) 
)


CREATE TABLE [PullMedOrders] (
   	[orderId] int REFERENCES [PullOrders](pullId) NOT NULL,
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	[poQty] real check(poQty>0) NOT NULL,
	[supQty] real check(supQty>=0) default 0,
	[mazNum] varchar(10),
	Primary key (orderId, medId) 
)


CREATE TABLE [Tokens] (
   	[userId] smallint REFERENCES [Users](userId) Primary key,
	[token] varchar(100) 
)

Select * from [Departments]
Select * from [Users] 
Select * from [Medicines]
Select * from [Norms]
Select * from [MedNorms]
Select * from [NormRequests]
Select * from [MedNormRequests]
Select * from [Usages]
Select * from [MedUsages]
Select * from [Stocks]
Select * from [Messages]
Select * from [MedRequests]
Select * from [DepRequests]
Select * from [PushOrders]
Select * from [PushMedOrders]
Select * from [PullOrders]
Select * from [PullMedOrders]
Select * from [Tokens]
