

DELETE FROM [MedUsages] WHERE [usageId] between 45 and 46
DELETE FROM [Usages] WHERE [usageId] between 45 and 46

INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (4,721, 17, '1191302')

DELETE FROM [MedUsages] WHERE [usageId] = 721 and [medId] = 4
DELETE FROM [Usages] WHERE [usageId] = 721

Select * from [Usages]
where year(lastUpdate) =2023 and depId = 3 and MONTH(lastUpdate) = 3

Select * from [MedUsages]
where [usageId] = 721

Select * from [MedUsages]
where [usageId] = 38

--UPDATE [PushMedOrders]
--SET [supQty] = 7.0
--WHERE [orderId] = 7 and [medId] = 1