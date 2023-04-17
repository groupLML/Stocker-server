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
-- Author:		<LML>
-- Create date: <28-02-2023>
-- Description:	<Insert MedUsages>
-- =============================================
ALTER PROCEDURE spInsertMedUsages

    @medId smallint,
    @usageId int,
	@useQty real,
	@chamNum varchar(10)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 DECLARE @MED smallint
	
	 SET @MED= (select medId
	            from [Medicines] as M inner join Conversions as C on M.mazNum=C.mazNum
	            where chamNum=@chamNum);

	 INSERT INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (@MED,@usageId,@useQty,@chamNum)

END
GO



--BEGIN
--	 DECLARE @MED smallint, @depId smallint, @usageId smallint, @useQty real,  @res smallint
	 
--	 INSERT INTO [Usages] ([depId],[reportNum],[lastUpdate]) Values (3,'44444', getdate())
--	 set @usageId= (SELECT SCOPE_IDENTITY());
	
--	 SET @MED= (select medId
--	            from [Medicines] as M inner join Conversions as C on M.mazNum=C.mazNum
--	            where chamNum='1191304');

--	 INSERT INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (@MED,@usageId,1,'1191304')
	 
--	 SET @depId= (select depId
--	              from [Usages]
--	              where usageId=@usageId);

--    SET @res= 0;

--	if(1 <= (select sum(stcQty)
--	           from Stocks
--	           where medId=@MED and depId=@depId))
--      BEGIN
--	      Exec spDeductDepStock @depId, @MED, @useQty;
--	      SET @res= 2;
--	  END

--	select @res
--END



	 --select * from Conversions 
	 --select * from [Usages]
	 --select * from [MedUsages]
	 --select * from [Stocks]
	 --where depId=3 and medId=1
	 --order by medId, depId

	