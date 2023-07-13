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
-- Create date: <04-04-2023>
-- Description:	<Update UpdatePullOrderNurse>
-- =============================================
ALTER PROCEDURE spUpdatePullOrderNurse

	@pullId int,
	@nUser smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE [PullOrders] set [nUser]=@nUser,[lastUpdate]=GETDATE()
	 where pullId=@pullId and pullStatus= 'W'
END
GO

