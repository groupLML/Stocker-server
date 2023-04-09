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
-- Description:	<Insert PushMedOrders>
-- =============================================
ALTER PROCEDURE spInsertPushMedOrders

 	@orderId int,
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
	 DECLARE @MED varchar(10)
	
	 SET @MED= (select medId
	 from [Medicines]
	 where mazNum=@mazNum);

	 INSERT INTO [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) 
	 Values (@orderId,@MED,@poQty,@supQty,@mazNum)


END
GO