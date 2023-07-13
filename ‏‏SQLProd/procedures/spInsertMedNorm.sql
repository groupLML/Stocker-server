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
-- Description:	<insert MedNorm>
-- =============================================
ALTER PROCEDURE spInsertMedNorm
	
    @normId smallint,
	@medId smallint,
	@normQty real,
	@mazNum varchar(10)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;
	 DECLARE @MAZ varchar(10)
	
	 SET @MAZ= (select mazNum
	            from [Medicines]
	            where medId=@medId);

    -- Insert statements for procedure here
	insert into [MedNorms] ([normId], [medId],[normQty], [mazNum]) values (@normId, @medId,@normQty, @MAZ)

END
GO
