SET IDENTITY_INSERT [dbo].[Presidents] ON
GO

INSERT INTO [dbo].[Presidents]
           ([PresidentId]
           ,[Name])
     VALUES
           (1
           ,'george washington')
GO 

INSERT INTO [dbo].[Presidents]
           ([PresidentId]
           ,[Name])
     VALUES
           (2
           ,'john adams')
GO

INSERT INTO [dbo].[Presidents]
           ([PresidentId]
           ,[Name])
     VALUES
           (3
           ,'thomas jefferson')
GO

INSERT INTO [dbo].[Presidents]
           ([PresidentId]
           ,[Name])
     VALUES
           (4
           ,'james madison')
GO

INSERT INTO [dbo].[Presidents]
           ([PresidentId]
           ,[Name])
     VALUES
           (5
           ,'james monroe')
GO

INSERT INTO [dbo].[Presidents]
           ([PresidentId]
           ,[Name])
     VALUES
           (6
           ,'john quincy adams')
GO

INSERT INTO [dbo].[Presidents]
           ([PresidentId]
           ,[Name])
     VALUES
           (7
           ,'andrew jackson')
GO

INSERT INTO [dbo].[Presidents]
           ([PresidentId]
           ,[Name])
     VALUES
           (8
           ,'martin van buren')
GO

INSERT INTO [dbo].[Presidents]
           ([PresidentId]
           ,[Name])
     VALUES
           (9
           ,'william henry harrison')
GO

INSERT INTO [dbo].[Presidents]
           ([PresidentId]
           ,[Name])
     VALUES
           (10
           ,'john tyler')
GO

SET IDENTITY_INSERT [dbo].[Presidents] OFF
GO

SET IDENTITY_INSERT [dbo].[Terms] ON
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (1
           ,1
           ,1
           ,'4-30-1789 12:00:00 AM'
           ,'3-4-1793 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (2
           ,1
           ,2
           ,'3-4-1793 12:00:00 AM'
           ,'3-4-1797 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (3
           ,2
           ,1
           ,'3-4-1797 12:00:00 AM'
           ,'3-4-1801 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (4
           ,3
           ,1
           ,'3-4-1801 12:00:00 AM'
           ,'3-4-1805 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (5
           ,3
           ,2
           ,'3-4-1805 12:00:00 AM'
           ,'3-4-1809 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (6
           ,4
           ,1
           ,'3-4-1809 12:00:00 AM'
           ,'3-4-1813 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (7
           ,4
           ,2
           ,'3-4-1813 12:00:00 AM'
           ,'3-4-1817 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (8
           ,5
           ,1
           ,'3-4-1817 12:00:00 AM'
           ,'3-4-1821 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (9
           ,5
           ,2
           ,'3-4-1821 12:00:00 AM'
           ,'3-4-1825 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (10
           ,6
           ,1
           ,'3-4-1825 12:00:00 AM'
           ,'3-4-1829 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (11
           ,7
           ,1
           ,'3-4-1829 12:00:00 AM'
           ,'3-4-1833 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (12
           ,7
           ,2
           ,'3-4-1833 12:00:00 AM'
           ,'3-4-1837 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (13
           ,8
           ,1
           ,'3-4-1837 12:00:00 AM'
           ,'3-4-1841 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (14
           ,9
           ,1
           ,'3-4-1841 12:00:00 AM'
           ,'4-4-1841 12:00:00 AM')
GO

INSERT INTO [dbo].[Terms]
           ([TermId]
           ,[PresidentId]
           ,[TermIndex]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (15
           ,10
           ,1
           ,'4-6-1841 12:00:00 AM'
           ,'3-4-1845 12:00:00 AM')
GO

SET IDENTITY_INSERT [dbo].[Terms] OFF
GO

