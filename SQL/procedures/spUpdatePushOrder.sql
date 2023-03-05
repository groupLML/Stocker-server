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
-- Author:		<Lital>
-- Create date: <28-02-2023>
-- Description:	<Update PushOrder>
-- =============================================
CREATE PROCEDURE spUpdatePushOrder

	@pushId int,
	@pUser smallint,
	@depId smallint,
	@reportNum varchar (10),
	@pushStatus char(1),
	@pushDate datetime,
	@lastUpdate datetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE [PushOrders] set [pUser]=@pUser,[depId]=@depId,[reportNum]=@reportNum,
	 [pushStatus]=@pushStatus,[pushDate]=@pushDate,[lastUpdate]=GETDATE()
	 where pushId=@pushId
END
GO