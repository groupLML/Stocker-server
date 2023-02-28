CREATE TABLE [Departments] (
	[depId] smallint IDENTITY (1,1),
    [depName] nvarchar(30) NOT NULL,
	[depPhone] char (9) unique check (depPhone like('04'+replicate('[0-9]',7))) NOT NULL,
	[depType] nvarchar(11) check(depType in(N'כירורגיה', N'מערכות מידע', N'אורטופדיה', N'פנימית', N'בית מרקחת')) NOT NULL,
	Primary key (depId) 
)


CREATE TABLE [Users] (
	[userId] smallint IDENTITY (1,1),
	[username] varchar(30) unique,
    [firstName] nvarchar(20) NOT NULL,
    [lastName] nvarchar(20) NOT NULL,
	[email] nvarchar(50) check(email like '[0-9a-zA-Z]%@__%.__%') NOT NULL,
	--[email] nvarchar(30) check(email like '[0-9a-zA-Z]%@hymc.gov.il'),
	[password] char(3) NOT NULL,
	--[password] char(8) NOT NULL,
	[phone] char(10) unique check (phone like('05'+replicate('[0-9]',8))) NOT NULL,
	[position] nvarchar(30),
	[jobType] char(1) check(jobType in('P', 'N', 'A','M')) NOT NULL, 
	[depId] smallint REFERENCES [Departments](depId) NOT NULL, 
	[isActive] bit default 'true',
	Primary key (userId)
)


CREATE TABLE [Medicines] (
	[medId] smallint IDENTITY (1,1),
    [genName] nvarchar(100) NOT NULL,
    [comName] nvarchar(100) NOT NULL,
	[ea] smallint check(ea>0) NOT NULL,
	[unit] varchar(10) NOT NULL, --REFERENCES [Units](unitName) àå DataList?
	[method] varchar(5) NOT NULL,
	[atc] varchar(10) NOT NULL,
	[mazNum] varchar(10) NOT NULL,
	[chamNum] varchar(10) NOT NULL,
	[medStatus] bit default 'true',
	[lastUpdate] datetime default GETDATE(),
	Primary key (medId) 
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
    [inNorm] bit default 'true',
	Primary key (normId, medId)
)


CREATE TABLE [NormRequests](
   	[normId] smallint REFERENCES [Norms](normId) NOT NULL,
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	[ncrDate] datetime default GETDATE(),
	[userId] smallint REFERENCES [Users](userId) NOT NULL,
	[ncrQty] real check(ncrQty>=0) NOT NULL,
	Primary key (normId,medId,ncrDate)
) 


CREATE TABLE [Usages] (
    [useId] int IDENTITY (1,1),
   	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
	[reportNum] varchar (10),
	[lastUpdate] datetime default GETDATE(),
	Primary key (useId) 
)


CREATE TABLE [MedUsages] (
     [medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	 [useId] int REFERENCES [Usages](useId) NOT NULL,
     [useQty] real check(useQty>0) NOT NULL,
	 [chamNum] varchar(10),
	 Primary key (medId, useId) 
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
	[reqStatus] char(1) check(reqStatus in('A', 'D', 'W')) default 'W',
	[reqDate] datetime default GETDATE(),
	Primary key (reqId)
)
--A=approved, D=decline, W=waiting

CREATE TABLE [DepRequests] (
    [reqId] smallint  REFERENCES [Users](userId) NOT NULL,
    [cDep] smallint REFERENCES [Departments](depId) NOT NULL,
	[reqDep] smallint REFERENCES [Departments](depId) NOT NULL,
	[reqStatus] char(1) check(reqStatus in('A', 'W')) default 'W',
	Primary key (reqId,cDep,reqDep)
)
--A=approved, W=waiting



--CREATE TABLE [Returns] (
--    [rtnId] smallint IDENTITY (1,1),
--   	[userId] smallint REFERENCES [Users](userId) NOT NULL,
--	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
--	[rtnDate] datetime default GETDATE() NOT NULL,
--	Primary key (rtnId) 
--)


--CREATE TABLE [MedReturns](
--    [rtnId] smallint REFERENCES [Returns](rtnId) NOT NULL,
--	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
--    [reason] nvarchar(10) check(reason in(N'äåæîï áèòåú', N'çåñø ùéîåù', N'ôâ úå÷ó', N'ôâåí', N'èéôåì äñúééí')) NOT NULL,
--	[rtnQty] real check(rtnQty>0) NOT NULL,
--	Primary key (rtnId, medId) 
--)



CREATE TABLE [MedReturns](
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
	[rtnDate] datetime default GETDATE() NOT NULL,
	[userId] smallint REFERENCES [Users](userId) NOT NULL,
	[rtnQty] real check(rtnQty>0) NOT NULL,
    [reason] nvarchar(10) check(reason in(N'äåæîï áèòåú', N'çåñø ùéîåù', N'ôâ úå÷ó', N'ôâåí', N'èéôåì äñúééí')) NOT NULL,
	Primary key (medId,depId,rtnDate) 
)


CREATE TABLE [PushOrders] (
    [pushId] int IDENTITY (1,1),
	[pUser] smallint REFERENCES [Users](userId),
	[depId] smallint REFERENCES [Departments](depId) NOT NULL,
	[reportNum] varchar (10),
	[pushStatus] char(1) check(pushStatus in('A', 'S')) NOT NULL,
	[pushDate] datetime NOT NULL,
	[lastUpdate] datetime default GETDATE(),
	Primary key (pushId) 
)

--A=  ,S=Shipped

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

--T=taken, W=waiting, I= ??

CREATE TABLE [PushMedOrders] (
   	[pushId] int REFERENCES [PushOrders](pushId) NOT NULL,
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	[poQty] real check(poQty>0) NOT NULL,
	[supQty] real check(supQty>=0) default 0,
	[mazNum] varchar(10) NOT NULL,
	Primary key (pushId, medId) 
)


CREATE TABLE [PullMedOrders] (
   	[pullId] int REFERENCES [PullOrders](pullId) NOT NULL,
	[medId] smallint REFERENCES [Medicines](medId) NOT NULL,
	[poQty] real check(poQty>0) NOT NULL,
	[supQty] real check(supQty>=0) default 0,
	[mazNum] varchar(10) NOT NULL,
	Primary key (pullId, medId) 
)



Select * from [Departments]
Select * from [Users]  
Select * from [Medicines]
Select * from [Norms]
Select * from [MedNorms]
Select * from [NormRequests]
Select * from [Usages]
Select * from [MedUsages]
Select * from [Stocks]
Select * from [Messages] 
Select * from [MedRequests]
Select * from [DepRequests]
Select * from [MedReturns]
Select * from [PushOrders]
Select * from [PullOrders]
Select * from [PushMedOrder]
Select * from [PullMedOrder]