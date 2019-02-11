IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CreateTerm]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CreateTerm]
GO

CREATE PROCEDURE [dbo].[CreateTerm]
	(@TermId bigint output,
	@PresidentId bigint,
	@StartDate datetime,
	@EndDate datetime)
AS
BEGIN
	SET NOCOUNT ON;

	declare
		@TermIndex int

	select @TermIndex = isnull(max(t.TermIndex), 0) + 1
	from [dbo].[Terms] t
	where t.PresidentId = @PresidentId

	insert into [dbo].[Terms] (PresidentId, TermIndex, StartDate, EndDate)
	values (@PresidentId, @TermIndex, @StartDate, @EndDate)
	
	set @TermId = scope_identity()
END
GO
