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
-- Create date: <08/04/23>
-- Description:	<>
-- =============================================
ALTER PROCEDURE spReadMessages
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	--Insert INTO [Messages] ([userId],[msg],[msgDate]) VALUES (@userId, @msg, @msgDate)
     SELECT M.msgId,U.firstName +' '+ U.lastName as pharmacistName,M.msg,M.msgDate
	 FROM [Messages] as M inner join [Users] as U on M.userId=U.userId
	 where Datediff(day,msgDate ,GETDATE()) < 30
	 order by msgDate desc
END
GO

--exec spReadMessages