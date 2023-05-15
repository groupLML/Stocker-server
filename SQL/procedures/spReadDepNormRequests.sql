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
-- Create date: <15/05/2023>
-- Description:	<Read Dep MedNorms>
-- =============================================
create PROCEDURE spReadDepNormRequests
     @depId smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

	select NR.reqId as 'reqId',N.normId as 'normId', depId,userId, reqDate, reqStatus, MNR.medId as 'medId', 
	       genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName',reqQty
	 from [Norms] as N 
	 inner join [NormRequests] as NR on N.normId= NR.normId
	 inner join [MedNormRequests] as MNR on NR.reqId= MNR.reqId
	 inner join [Medicines] as M on MNR.medId=M.medId
	 where depId=@depId
	 order by NR.reqId desc, reqDate desc

END
GO


