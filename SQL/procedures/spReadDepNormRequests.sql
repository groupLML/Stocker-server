﻿-- ================================================
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
alter PROCEDURE spReadDepNormRequests
     @depId smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

	 select NR.reqId ,N.normId , D.depId, depName,
	        U.userId, firstName +' '+ lastName as 'fullName',position,reqDate, MNR.medId, genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName',reqQty,MN.normQty
	 from [Departments] as D 
	 inner join [Norms] as N on D.depId= N.depId
	 inner join [NormRequests] as NR on N.normId= NR.normId
	 inner join [MedNormRequests] as MNR on NR.reqId= MNR.reqId
	 inner join [Medicines] as M on MNR.medId=M.medId
	 inner join [Users] as U on U.userId = NR.userId
	 inner join [MedNorms] as MN on N.normId=MN.normId
	 where D.depId=@depId and reqStatus = 'W'
	 order by NR.reqId desc, reqDate desc

END
GO

	 --select NR.reqId ,N.normId , D.depId, depName,
	 --       U.userId, firstName +' '+ lastName as 'fullName',position,reqDate, MNR.medId, genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName',reqQty,MN.normQty
	 --from [Departments] as D 
	 --inner join [Norms] as N on D.depId= N.depId
	 --inner join [NormRequests] as NR on N.normId= NR.normId
	 --inner join [MedNormRequests] as MNR on NR.reqId= MNR.reqId
	 --inner join [Medicines] as M on MNR.medId=M.medId
	 --inner join [Users] as U on U.userId = NR.userId
	 --inner join [MedNorms] as MN on N.normId=MN.normId
	 --where D.depId=3 and reqStatus = 'W'
	 --order by NR.reqId desc, reqDate desc




