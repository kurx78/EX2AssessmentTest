IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTerm]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetTerm]
GO

CREATE PROCEDURE [dbo].[GetTerm]
	(@TermId bigint)
AS
BEGIN
	SET NOCOUNT ON;

	select t.TermId, t.PresidentId, t.TermIndex, t.StartDate, t.EndDate
	from [dbo].[Terms] t 
	where t.TermId = @TermId
END
GO
