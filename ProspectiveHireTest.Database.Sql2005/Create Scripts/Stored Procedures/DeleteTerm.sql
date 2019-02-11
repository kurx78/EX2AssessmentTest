IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeleteTerm]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[DeleteTerm]
GO

CREATE PROCEDURE [dbo].[DeleteTerm]
	(@TermId bigint)
AS
BEGIN
	SET NOCOUNT ON;

	delete from [dbo].[Terms] where TermId = @TermId
END
GO
