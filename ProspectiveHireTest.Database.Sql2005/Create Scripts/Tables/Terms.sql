CREATE TABLE [dbo].[Terms](
	[TermId] [bigint] IDENTITY(1,1) NOT NULL,
	[PresidentId] [bigint] NOT NULL,
	[TermIndex] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_Terms_1] PRIMARY KEY CLUSTERED 
(
	[TermId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


