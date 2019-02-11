CREATE PROCEDURE GeneratePresidentsXML
AS 
  BEGIN 
      SET nocount ON; 

      SELECT NAME 
      FROM   [dbo].[Presidents]
      FOR xml path ('President') 
  END 

go 