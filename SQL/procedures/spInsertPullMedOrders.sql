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
-- Description:	<Insert PullMedOrders>
-- =============================================
ALTER PROCEDURE spInsertPullMedOrders

 	@pullId int,
	@medId smallint,
	@poQty real,
	@supQty real,
	@mazNum varchar(10)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 DECLARE @MAZ varchar(10)
	
	 SET @MAZ= (select mazNum
	 from [Medicines]
	 where medId=@medId);

	 INSERT INTO [PullMedOrders] ([pullId],[medId],[poQty],[supQty],[mazNum]) 
	 Values (@pullId,@medId,@poQty,@supQty,@MAZ)


END
GO
