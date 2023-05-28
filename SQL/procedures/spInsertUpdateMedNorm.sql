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
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE spInsertUpdateMedNorm

    @normId smallint,
	@medId smallint,
	@normQty real,
	@mazNum varchar(10)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @qty real,  @MAZ varchar(10)

	SET @qty= (select normQty
	           from MedNorms
	           where medId=@medId and normId=@normId);

	if(@qty is Null) --אם התרופה לא קיימת בתקן
	    BEGIN
		   SET @MAZ= (select mazNum
	                  from [Medicines]
	                  where medId=@medId);

		    insert into [MedNorms] ([normId], [medId],[normQty], [mazNum]) values (@normId, @medId,@normQty, @MAZ)
		END
	else
	    BEGIN
		    UPDATE [MedNorms] set [normQty]=@normQty where medId=@medId and normId=@normId
		END

	select @@rowcount
	
END
GO



	--DECLARE @qty real,  @MAZ varchar(10)

	--SET @qty= (select normQty
	--           from MedNorms
	--           where medId=5 and normId=103);

	--if(@qty is Null) --אם התרופה לא קיימת בתקן
	--    BEGIN
	--	   SET @MAZ= (select mazNum
	--                  from [Medicines]
	--                  where medId=5);

	--	    insert into [MedNorms] ([normId], [medId],[normQty], [mazNum]) values (103, 5,25, @MAZ)
	--	END
	--else
	--    BEGIN
	--	    UPDATE [MedNorms] set [normQty]=25 where medId=5 and normId=103
	--	END

	--select @@rowcount