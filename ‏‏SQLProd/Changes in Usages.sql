

DELETE FROM [MedUsages] WHERE [usageId] between 45 and 46
DELETE FROM [Usages] WHERE [usageId] between 45 and 46


DELETE FROM [MedUsages] WHERE [usageId] = 47
DELETE FROM [Usages] WHERE [usageId] = 47

Select * from [Usages]
where year(lastUpdate) =2022 and depId = 3 and MONTH(lastUpdate) = 12

Select * from [MedUsages]
where [usageId] = 36

--UPDATE [PushMedOrders]
--SET [supQty] = 7.0
--WHERE [orderId] = 7 and [medId] = 1