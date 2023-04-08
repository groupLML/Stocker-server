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
	  DECLARE @MED varchar(10)
	
	 SET @MED= (select medId
	 from [Medicines] as M inner join Conversions as C
	      on M.mazNum=C.mazNum
	 where chamNum=@chamNum);

	 INSERT INTO [MedUsages] ([medId],[usageId],[useQty],[chamNum]) Values (@MED,@usageId,@useQty,@chamNum)

	 select @MED from [MedUsages] 

END
GO
