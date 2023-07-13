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
-- Create date: <20/04/2023>
-- Description:	<Read Norm>
-- =============================================
ALTER PROCEDURE spReadNorms

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

	SELECT N.normId as 'NormId', depId, N.lastUpdate as 'LastUpdate', MN.medId, normQty, MN.mazNum,
	       genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName'
	 FROM [Norms] as N 
	 inner join [MedNorms] as MN on N.normId= MN.normId
	 inner join [Medicines] as M on MN.medId=M.medId
	 order by N.normId desc, lastUpdate desc
	 
END
GO
