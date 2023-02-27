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
-- Create date: <27/02/2023>
-- Description:	<Read Dep MedNorms>
-- =============================================
CREATE PROCEDURE spReadDepMedNorms
     @depId smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [MedNorms].medId,genName,comName, normQty
	FROM [MedNorms] inner join [Norms]  
	     on [MedNorms].normId=[Norms].normId inner join [Medicines]
	     on [MedNorms].medId=[Medicines].medId
	where [Norms].depId=@depId and [MedNorms].inNorm=1


END
GO
