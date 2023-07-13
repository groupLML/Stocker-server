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
-- Create date: <10/05/2023>
-- Description:	<update Norm>
-- =============================================
Alter PROCEDURE spUpdateNorm
	
    @normId smallint,
	@depId smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [Norms] set [lastUpdate]=GETDATE()
	where normId=@normId

END
GO

--	UPDATE [Norms] set [depId]=@depId, [lastUpdate]=GETDATE()