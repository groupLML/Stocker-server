
Select * from [Usages]
order by lastUpdate desc
Select * from [MedUsages]
Select * from MedNorms
Select * from [Norms]

--למחוק
DROP TABLE [Usages]
DROP TABLE [MedUsages]

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

DECLARE @usageId smallint

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2020-01-05 10:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2020-02-27 05:01:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2020-03-07 13:39:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2020-04-05 16:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2020-05-08 08:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2020-06-15 00:19:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2020-07-25 02:18:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2020-08-14 09:14:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2020-09-30 10:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2020-10-22 19:28:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2020-11-15 06:45:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2020-12-06 08:01:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2021-01-16 07:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2021-02-02 17:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2021-03-13 11:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2021-04-28 22:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2021-05-09 22:02:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2021-06-27 06:41:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2021-07-13 14:43:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2021-08-02 20:34:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2021-09-15 13:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2021-10-21 02:47:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2021-11-01 19:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2021-12-16 15:19:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-01-15 11:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-02-24 10:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-03-28 07:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-04-16 03:28:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-05-08 13:16:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-06-27 08:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-07-24 05:28:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-28 10:46:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-09-22 13:05:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-10-01 12:11:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-11-01 22:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-12-27 17:23:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-01-31 03:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-02-02 0:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-03-28 14:16:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-04-24 13:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-05-30 10:43:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-06-14 19:56:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-07-12 08:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-08-30 21:30:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-09-16 09:53:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-10-02 01:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-11-07 17:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-12-16 14:21:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2024-01-24 03:38:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2024-02-07 10:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2024-03-09 02:58:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2024-04-28 10:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2024-05-23 01:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2024-06-11 13:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2024-07-04 23:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2024-08-12 05:0:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2024-09-07 16:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2024-10-15 22:18:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2024-11-27 16:38:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2024-12-21 18:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2020-01-17 14:25:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2020-02-09 06:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2020-03-31 17:02:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2020-04-30 17:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2020-05-04 06:36:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2020-06-12 10:36:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2020-07-06 06:18:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2020-08-14 00:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2020-09-24 05:12:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2020-10-23 02:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2020-11-30 13:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2020-12-19 03:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2021-01-30 05:25:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2021-02-05 06:45:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2021-03-01 0:23:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2021-04-02 20:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2021-05-14 13:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2021-06-28 19:02:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2021-07-16 20:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2021-08-05 19:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2021-09-23 01:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2021-10-30 16:01:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2021-11-14 22:27:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2021-12-13 14:18:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2022-01-29 21:46:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2022-02-12 00:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2022-03-24 10:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2022-04-11 13:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2022-05-22 22:38:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2022-06-11 05:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2022-07-05 18:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2022-08-31 08:16:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2022-09-21 23:00:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2022-10-30 17:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2022-11-16 11:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2022-12-31 20:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-01-30 21:04:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-02-05 19:0:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-03-19 03:14:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-04-12 08:04:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-05-15 23:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-06-30 23:32:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-07-30 01:28:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-08-14 16:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-09-08 22:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-10-23 08:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-11-06 03:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-12-12 09:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2024-01-30 10:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2024-02-27 10:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2024-03-07 15:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2024-04-13 14:56:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2024-05-23 01:25:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2024-06-30 19:41:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2024-07-08 19:28:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2024-08-19 10:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2024-09-24 09:04:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2024-10-19 12:19:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2024-11-09 23:48:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2024-12-31 0:56:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2020-01-01 12:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2020-02-17 08:05:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2020-03-23 05:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2020-04-21 18:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2020-05-17 05:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2020-06-01 17:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2020-07-09 00:11:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2020-08-16 20:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2020-09-22 22:34:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2020-10-14 15:38:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2020-11-26 12:30:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2020-12-13 14:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2021-01-31 17:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2021-02-05 04:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2021-03-06 16:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2021-04-22 11:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2021-05-19 0:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2021-06-30 17:46:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2021-07-25 16:18:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2021-08-28 0:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2021-09-22 19:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2021-10-10 20:11:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2021-11-16 17:58:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2021-12-04 11:41:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2022-01-14 09:14:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2022-02-15 06:41:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2022-03-01 12:01:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2022-04-30 00:14:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2022-05-22 07:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2022-06-30 06:58:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2022-07-12 13:39:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2022-08-10 05:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2022-09-09 17:15:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2022-10-09 10:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2022-11-02 18:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2022-12-24 10:46:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2023-01-29 11:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2023-02-26 0:41:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2023-03-31 03:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2023-04-15 11:12:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2023-05-01 12:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2023-06-30 17:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2023-07-18 12:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2023-08-05 0:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2023-09-01 00:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2023-10-26 18:58:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2023-11-02 00:07:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2023-12-12 06:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2024-01-28 12:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2024-02-26 11:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2024-03-26 0:46:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2024-04-17 22:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2024-05-26 18:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2024-06-08 05:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2024-07-14 04:46:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2024-08-30 16:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2024-09-06 15:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2024-10-13 21:47:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2024-11-29 09:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (5,'66666','2024-12-11 13:23:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2020-01-04 03:02:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2020-02-10 05:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2020-03-24 0:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2020-04-09 11:45:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2020-05-31 20:50:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2020-06-16 00:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2020-07-27 0:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2020-08-21 01:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2020-09-24 15:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2020-10-27 02:01:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2020-11-13 07:25:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2020-12-02 06:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2021-01-06 00:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2021-02-14 10:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2021-03-15 04:16:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2021-04-15 10:48:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2021-05-26 13:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2021-06-24 23:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2021-07-30 19:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2021-08-30 16:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2021-09-02 22:41:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2021-10-31 13:06:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2021-11-08 15:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2021-12-25 16:41:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2022-01-13 07:21:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2022-02-09 13:47:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2022-03-15 11:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2022-04-30 02:43:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2022-05-17 17:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2022-06-09 14:43:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2022-07-11 23:19:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2022-08-25 03:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2022-09-22 10:38:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2022-10-18 12:27:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2022-11-08 10:41:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2022-12-15 0:38:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2023-01-27 13:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2023-02-17 12:38:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2023-03-31 19:11:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2023-04-17 08:02:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2023-05-17 00:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2023-06-06 08:53:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2023-07-22 16:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2023-08-31 17:21:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2023-09-24 19:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2023-10-24 01:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2023-11-01 05:27:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2023-12-20 14:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2024-01-23 21:08:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2024-02-18 16:56:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2024-03-06 06:41:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2024-04-08 11:56:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2024-05-30 12:04:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2024-06-03 08:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2024-07-05 19:12:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2024-08-30 04:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2024-09-29 12:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2024-10-25 22:34:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2024-11-02 01:06:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (6,'66666','2024-12-27 14:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2020-01-13 05:02:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2020-02-22 03:36:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2020-03-18 07:49:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2020-04-30 05:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2020-05-30 13:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2020-06-31 22:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2020-07-18 15:45:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2020-08-19 23:11:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2020-09-29 07:34:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2020-10-07 08:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2020-11-30 14:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2020-12-30 22:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2021-01-09 24:12:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2021-02-03 08:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2021-03-31 17:27:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2021-04-24 20:11:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2021-05-30 22:28:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2021-06-13 07:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2021-07-09 23:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2021-08-31 08:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2021-09-30 20:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2021-10-23 15:15:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2021-11-07 16:46:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2021-12-31 23:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2022-01-23 05:11:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2022-02-31 03:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2022-03-23 03:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2022-04-21 05:53:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2022-05-26 03:02:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2022-06-29 05:0:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2022-07-31 15:30:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2022-08-30 10:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2022-09-13 12:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2022-10-31 18:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2022-11-31 16:50:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2022-12-30 0:23:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2023-01-21 08:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2023-02-04 09:36:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2023-03-19 11:56:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2023-04-07 22:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2023-05-30 09:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2023-06-28 18:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2023-07-30 09:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2023-08-26 10:39:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2023-09-11 10:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2023-10-09 12:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2023-11-04 13:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2023-12-31 13:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2024-01-05 16:12:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2024-02-05 12:27:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2024-03-09 10:56:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2024-04-26 01:05:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2024-05-01 03:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2024-06-29 15:04:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2024-07-30 15:08:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2024-08-23 04:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2024-09-24 20:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2024-10-16 07:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2024-11-05 19:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (7,'66666','2024-12-26 03:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2020-01-22 13:39:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2020-02-05 05:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2020-03-31 05:38:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2020-04-04 03:08:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2020-05-30 0:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2020-06-31 24:02:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2020-07-30 05:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2020-08-30 03:23:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2020-09-31 06:34:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2020-10-02 15:12:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2020-11-31 07:08:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2020-12-31 14:32:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2021-01-26 17:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2021-02-30 10:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2021-03-16 09:15:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2021-04-06 19:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2021-05-26 20:07:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2021-06-29 22:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2021-07-15 16:04:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2021-08-31 07:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2021-09-09 07:41:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2021-10-31 15:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2021-11-30 19:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2021-12-09 08:28:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2022-01-30 20:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2022-02-08 04:47:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2022-03-29 09:21:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2022-04-31 14:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2022-05-18 02:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2022-06-31 22:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2022-07-28 12:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2022-08-31 12:15:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2022-09-17 08:07:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2022-10-31 09:47:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2022-11-25 22:53:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2022-12-29 09:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2023-01-17 0:58:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2023-02-31 0:49:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2023-03-16 09:56:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2023-04-03 12:27:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2023-05-13 23:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2023-06-21 19:15:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2023-07-24 09:43:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2023-08-31 12:06:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2023-09-09 0:18:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2023-10-17 03:04:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2023-11-06 13:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2023-12-14 21:38:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2024-01-24 23:12:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2024-02-31 21:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2024-03-31 10:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2024-04-25 08:0:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2024-05-08 10:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2024-06-05 19:21:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2024-07-13 11:50:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2024-08-31 07:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2024-09-15 15:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2024-10-02 24:12:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2024-11-17 13:06:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (8,'66666','2024-12-28 22:58:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2020-01-30 10:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2020-02-28 23:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2020-03-01 23:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2020-04-30 07:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2020-05-03 01:16:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2020-06-18 09:55:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2020-07-31 12:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2020-08-31 14:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2020-09-30 21:53:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2020-10-17 14:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2020-11-29 18:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2020-12-09 10:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2021-01-26 07:39:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2021-02-29 02:04:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2021-03-13 01:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2021-04-11 03:23:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2021-05-31 07:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2021-06-04 07:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2021-07-13 16:56:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2021-08-04 17:30:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2021-09-26 19:07:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2021-10-02 10:12:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2021-11-28 06:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2021-12-09 24:19:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2022-01-12 11:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2022-02-30 16:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2022-03-06 08:16:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2022-04-30 08:07:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2022-05-30 04:0:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2022-06-06 09:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2022-07-31 24:07:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2022-08-05 24:08:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2022-09-12 23:34:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2022-10-25 08:43:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2022-11-30 20:05:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2022-12-23 18:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2023-01-30 12:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2023-02-31 23:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2023-03-02 15:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2023-04-12 12:15:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2023-05-13 08:55:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2023-06-31 04:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2023-07-15 02:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2023-08-15 11:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2023-09-16 24:08:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2023-10-06 03:34:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2023-11-22 11:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2023-12-19 04:46:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2024-01-27 14:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2024-02-13 07:55:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2024-03-14 21:49:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2024-04-27 13:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2024-05-29 11:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2024-06-11 03:02:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2024-07-31 18:45:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2024-08-17 06:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2024-09-11 19:04:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2024-10-13 06:05:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2024-11-05 12:50:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (9,'66666','2024-12-06 12:21:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2020-01-02 13:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2020-02-02 22:58:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2020-03-21 17:38:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2020-04-01 23:43:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2020-05-15 05:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2020-06-31 17:12:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2020-07-26 14:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2020-08-01 23:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2020-09-18 03:08:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2020-10-30 09:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2020-11-21 21:49:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2020-12-27 17:06:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2021-01-17 23:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2021-02-05 23:02:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2021-03-26 02:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2021-04-06 19:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2021-05-31 24:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2021-06-02 0:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2021-07-31 10:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2021-08-13 03:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2021-09-09 21:11:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2021-10-31 23:41:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2021-11-25 14:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2021-12-31 09:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2022-01-18 15:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2022-02-31 22:55:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2022-03-17 0:25:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2022-04-03 16:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2022-05-09 24:0:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2022-06-08 16:30:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2022-07-02 23:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2022-08-04 0:39:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2022-09-01 22:49:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2022-10-03 17:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2022-11-19 21:05:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2022-12-31 20:36:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2023-01-06 18:27:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2023-02-26 13:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2023-03-31 08:32:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2023-04-30 04:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2023-05-08 02:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2023-06-29 21:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2023-07-21 03:23:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2023-08-05 17:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2023-09-04 04:48:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2023-10-31 22:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2023-11-18 22:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2023-12-31 20:43:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2024-01-16 08:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2024-02-31 14:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2024-03-01 03:18:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2024-04-13 02:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2024-05-23 0:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2024-06-17 18:07:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2024-07-15 0:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2024-08-13 07:36:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2024-09-31 16:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2024-10-18 12:36:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2024-11-30 18:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (10,'66666','2024-12-29 23:15:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2020-01-05 02:53:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2020-02-28 15:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2020-03-30 04:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2020-04-29 14:55:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2020-05-08 06:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2020-06-19 12:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2020-07-15 08:11:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2020-08-03 18:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2020-09-30 01:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2020-10-30 19:32:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2020-11-11 07:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2020-12-30 20:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2021-01-01 01:06:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2021-02-31 21:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2021-03-11 20:23:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2021-04-17 09:23:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2021-05-04 0:05:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2021-06-05 11:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2021-07-16 0:0:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2021-08-26 04:07:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2021-09-29 08:28:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2021-10-08 0:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2021-11-24 04:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2021-12-05 10:32:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2022-01-01 16:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2022-02-13 0:32:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2022-03-13 0:58:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2022-04-29 22:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2022-05-31 19:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2022-06-30 24:53:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2022-07-22 0:32:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2022-08-01 12:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2022-09-15 01:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2022-10-08 02:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2022-11-31 06:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2022-12-11 11:23:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2023-01-12 21:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2023-02-15 18:01:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2023-03-17 15:19:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2023-04-16 09:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2023-05-26 10:36:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2023-06-09 04:36:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2023-07-18 02:48:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2023-08-29 03:38:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2023-09-18 10:01:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2023-10-07 12:56:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2023-11-02 10:49:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2023-12-16 09:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2024-01-30 06:55:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2024-02-31 13:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2024-03-13 20:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2024-04-31 04:49:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2024-05-25 12:0:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2024-06-05 09:16:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2024-07-21 03:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2024-08-30 01:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2024-09-24 04:50:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2024-10-19 0:55:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2024-11-02 17:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (11,'66666','2024-12-25 0:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2020-01-31 0:02:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2020-02-14 13:47:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2020-03-31 21:36:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2020-04-06 08:48:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2020-05-28 15:06:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2020-06-17 04:41:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2020-07-19 06:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2020-08-31 19:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2020-09-30 01:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2020-10-08 19:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2020-11-28 24:07:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2020-12-18 07:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2021-01-24 21:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2021-02-30 19:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2021-03-31 04:48:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2021-04-01 05:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2021-05-12 18:0:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2021-06-24 22:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2021-07-07 05:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2021-08-31 23:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2021-09-30 19:08:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2021-10-24 11:49:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2021-11-30 0:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2021-12-30 05:27:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2022-01-14 12:28:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2022-02-03 04:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2022-03-30 12:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2022-04-27 02:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2022-05-28 20:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2022-06-21 07:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2022-07-31 16:46:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2022-08-23 21:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2022-09-30 09:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2022-10-06 22:45:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2022-11-31 07:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2022-12-02 06:30:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2023-01-29 23:46:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2023-02-16 11:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2023-03-16 13:15:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2023-04-30 21:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2023-05-31 09:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2023-06-31 24:30:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2023-07-18 10:12:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2023-08-16 11:47:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2023-09-31 14:30:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2023-10-15 17:58:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2023-11-30 24:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2023-12-08 04:12:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2024-01-14 22:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2024-02-07 04:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2024-03-28 10:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2024-04-17 0:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2024-05-25 17:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2024-06-01 19:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2024-07-31 17:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2024-08-11 04:15:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2024-09-08 10:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2024-10-19 11:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2024-11-27 20:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (12,'66666','2024-12-29 04:16:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2020-01-11 21:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2020-02-29 06:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2020-03-03 05:55:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2020-04-13 22:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2020-05-26 10:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2020-06-31 01:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2020-07-30 22:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2020-08-17 24:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2020-09-21 08:18:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2020-10-31 19:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2020-11-02 16:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2020-12-31 20:23:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2021-01-07 03:14:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2021-02-24 10:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2021-03-22 22:46:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2021-04-04 21:39:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2021-05-05 21:02:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2021-06-09 02:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2021-07-30 13:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2021-08-30 17:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2021-09-19 21:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2021-10-23 0:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2021-11-19 09:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2021-12-08 10:25:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2022-01-02 18:01:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2022-02-25 21:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2022-03-30 23:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2022-04-31 11:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2022-05-29 12:55:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2022-06-31 07:34:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2022-07-27 09:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2022-08-31 24:29:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2022-09-01 11:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2022-10-05 20:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2022-11-13 21:06:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2022-12-19 16:36:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2023-01-25 12:55:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2023-02-11 24:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2023-03-21 15:25:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2023-04-28 12:27:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2023-05-13 18:49:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2023-06-28 13:59:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2023-07-30 24:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2023-08-13 0:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2023-09-05 06:45:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2023-10-22 24:25:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2023-11-14 17:06:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2023-12-14 11:50:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2024-01-14 14:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2024-02-04 17:28:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2024-03-09 11:39:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2024-04-07 20:46:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2024-05-03 18:49:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2024-06-30 0:20:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2024-07-01 09:32:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2024-08-16 13:58:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2024-09-26 18:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2024-10-06 09:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2024-11-15 21:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (13,'66666','2024-12-30 16:09:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2020-01-24 12:16:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2020-02-23 05:49:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2020-03-22 14:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2020-04-08 24:33:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2020-05-25 15:22:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2020-06-30 18:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2020-07-19 18:28:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2020-08-12 23:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2020-09-22 15:39:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2020-10-01 07:03:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2020-11-31 09:08:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2020-12-17 24:25:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2021-01-31 04:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2021-02-07 23:19:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2021-03-03 24:38:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2021-04-11 23:04:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2021-05-17 16:45:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2021-06-23 20:45:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 23, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2021-07-06 12:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2021-08-28 20:10:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 26, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2021-09-30 10:0:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2021-10-25 08:48:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2021-11-16 07:51:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2021-12-31 0:35:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2022-01-30 08:02:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2022-02-22 09:44:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 19, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2022-03-02 16:14:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2022-04-30 15:06:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2022-05-31 11:23:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2022-06-31 13:16:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2022-07-04 04:18:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 22, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2022-08-04 11:04:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 20, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 17, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 21, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2022-09-31 17:24:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 25, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 21, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2022-10-27 20:39:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 25, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2022-11-31 08:21:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2022-12-25 14:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 23, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 20, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2023-01-06 12:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2023-02-16 09:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2023-03-30 23:18:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 27, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2023-04-28 11:40:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2023-05-04 15:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2023-06-06 23:17:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2023-07-03 09:16:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 27, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 27, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2023-08-31 17:13:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 24, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 19, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2023-09-18 20:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 20, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2023-10-26 06:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 28, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 28, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 21, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 23, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2023-11-30 19:26:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2023-12-13 15:52:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 24, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2024-01-12 04:39:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2024-02-09 21:37:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 18, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 23, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 21, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2024-03-17 03:55:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 21, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 16, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 29, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2024-04-30 16:57:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 27, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 20, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 18, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2024-05-24 05:28:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 22, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 26, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2024-06-18 08:21:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 22, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 30, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 28, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 25, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2024-07-30 12:50:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 25, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 18, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 26, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2024-08-19 12:23:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 31, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 28, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 15, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 24, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2024-09-06 13:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 19, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 21, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 26, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 22, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2024-10-30 03:21:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 26, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 23, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 29, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 19, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 22, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2024-11-14 22:32:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 27, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 24, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 30, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 25, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 20, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 22, '1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (14,'66666','2024-12-22 13:42:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 24, '1191302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (2, @usageId, 29, '1291302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4, @usageId, 23, '1491302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (5, @usageId, 24, '1791302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (7, @usageId, 25, '1591302')
INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (8, @usageId, 28, '1891302')





-------------------------------------------------------



Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-03-18 12:56:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,20,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,23,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,24,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,20,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,15,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,16,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-04-20 14:56:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,20,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,21,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,30,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,20,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,16,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-04-25 10:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,20,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,30,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,21,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,14,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-04-02 08:00:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-02-08 19:00:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,21,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,28,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,27,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,18,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,25,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,20,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2023-01-29 19:00:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,17,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,20,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,21,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,24,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,19,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,20,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-12-14 17:30:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,18,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,23,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,22,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,20,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,28,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,26,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-11-20 12:45:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,18,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,27,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,22,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,19,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,21,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-10-15 09:45:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,23,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,20,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,19,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,25,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,21,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,27,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-09-04 12:20:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,18,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,23,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,22,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,20,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,28,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,26,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')



Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')
Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')
Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')
Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')


Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')


Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')


Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')


Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')

Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'66666','2022-08-21 16:25:10.637')
set @usageId =(SELECT SCOPE_IDENTITY());

Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (1,@usageId,22,'1191302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (2,@usageId,25,'1291302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (4,@usageId,16,'1491302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (5,@usageId,28,'1591302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (7,@usageId,20,'1791302')
Insert INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (8,@usageId,19,'1891302')
