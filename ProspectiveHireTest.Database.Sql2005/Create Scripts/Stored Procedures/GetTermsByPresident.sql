IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTermsByPresident]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetTermsByPresident]
GO

CREATE PROCEDURE [dbo].[GetTermsByPresident]
	(@PresidentId bigint)
AS
BEGIN
	SET NOCOUNT ON;

	select t.TermId, t.PresidentId, t.TermIndex, t.StartDate, t.EndDate
	from [dbo].[Terms] t 
	where t.PresidentId = @PresidentId
	order by t.TermIndex
END
GO
