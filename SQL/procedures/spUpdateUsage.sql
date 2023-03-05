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
-- Description:	<update Usage>
-- =============================================
CREATE PROCEDURE spUpdateUsage

    @useId int,
    @depId smallint,
	@reportNum varchar (10),
	@lastUpdate datetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE [Usages] set [depId]=@depId,[reportNum]=@reportNum,[lastUpdate]=getdate() where [useId]=@useId
END
GO