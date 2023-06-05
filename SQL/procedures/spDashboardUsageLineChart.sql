-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE spDashboardUsageLineChart
	-- Add the parameters for the stored procedure here
	@depId smallint,
	@medId smallint,
	@month smallint,
	@year char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @TotalUsages smallint, @monthUsage smallint, @counter smallint
    DECLARE @res TABLE (qty smallint);

    DECLARE usage_Cursor CURSOR FOR 
           select sum(useQty) as TotalUsages, month(U.lastUpdate) as monthUsage
           from Usages U inner join MedUsages MU
                on MU.usageId=U.usageId
            where medId=@medId and depId=@depId and Year(U.lastUpdate) like @year
           group by medId, depId, month(U.lastUpdate), Year(U.lastUpdate)
           order by month(U.lastUpdate)

    OPEN usage_Cursor 

    FETCH NEXT FROM usage_Cursor INTO @TotalUsages, @monthUsage

    SET @counter = 1

	WHILE @counter <= 12
    BEGIN
    
	      if(@monthUsage = @counter)
	           INSERT INTO @res(qty) VALUES (@TotalUsages);

		  else
	           INSERT INTO @res(qty) VALUES (0);

		  set @counter =@counter +1; 

          FETCH NEXT FROM usage_Cursor INTO @TotalUsages, @monthUsage
    END

    CLOSE usage_Cursor
    DEALLOCATE usage_Cursor

	select *
	from @res


END
GO


    --select sum(useQty) as TotalUsages, month(U.lastUpdate) as monthUsage
    --from Usages U inner join MedUsages MU
    --     on MU.usageId=U.usageId
    --where medId=1 and depId=4 and Year(U.lastUpdate)=2023
    --group by medId, depId, month(U.lastUpdate), Year(U.lastUpdate)
    --order by month(U.lastUpdate)


    --select sum(useQty) as TotalUsages, month(U.lastUpdate) as monthUsage
    --from Usages U inner join MedUsages MU
    --     on MU.usageId=U.usageId
    --where medId=@medId and depId=@depId and Year(U.lastUpdate)=@year
    --group by medId, depId, month(U.lastUpdate), Year(U.lastUpdate)
    --order by month(U.lastUpdate)


--Delete from [Usages] where usageId =101 
--Delete from [Usages] where usageId =102 

--DECLARE @usageId smallint
--Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-06-28 18:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
--INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 3, '1191302')
--Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-06-28 18:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
--INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 5, '1191302')
--Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-06-28 18:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
--INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 2, '1191302')
--Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-06-28 18:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
--INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 1, '1191302')
--Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-06-28 18:54:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
--INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 3, '1191302')

--Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-05-30 09:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
--INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 3, '1191302')
--Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-05-31 09:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
--INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 5, '1191302')
--Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-05-30 09:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
--INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 2, '1191302')
--Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-05-30 09:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
--INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 3, '1191302')
--Insert INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (4,'66666','2023-05-30 09:31:00.637') set @usageId =(SELECT SCOPE_IDENTITY());
--INSERT INTO [MedUsages] ([medId], [usageId], [useQty], [chamNum]) VALUES (1, @usageId, 3, '1191302')