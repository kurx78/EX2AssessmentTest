IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateTerm]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateTerm]
GO

CREATE PROCEDURE [dbo].[UpdateTerm]
	(@TermId bigint,
	@PresidentId bigint,
	@TermIndex int,
	@StartDate datetime,
	@EndDate datetime)
AS
BEGIN
	SET NOCOUNT ON;

	update [dbo].[Terms] 
	set PresidentId = @PresidentId, TermIndex = @TermIndex, StartDate = @StartDate,
		EndDate = @EndDate
	where TermId = @TermId
END 
GO
