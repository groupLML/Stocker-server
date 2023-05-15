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
-- Create date: <27/02/2023>
-- Description:	<insert Norm>
-- =============================================
ALTER PROCEDURE spInsertNorm
	
    @normId smallint,
	@depId smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert INTO [Norms] ([depId],[lastUpdate]) Values (@depId, GETDATE()) SELECT SCOPE_IDENTITY()
END
GO
