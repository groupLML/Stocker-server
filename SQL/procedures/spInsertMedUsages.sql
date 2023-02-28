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
-- Description:	<Insert MedUsages>
-- =============================================
CREATE PROCEDURE spInsertMedUsages

    @medId smallint,
    @useId int,
	@useQty real,
	@chamNum varchar(10)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here

	 INSERT INTO [MedUsages] ([medId],[useId],[useQty],[chamNum]) Values (@medId,@useId,@useQty,@chamNum)

	 --select [Medicines].chamNum
	 --from [Medicines] inner join [MedUsages] on [MedUsages].medId=[Medicines].medId
	 --where medId=@medId

END
GO
