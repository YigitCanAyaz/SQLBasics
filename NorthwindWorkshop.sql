/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (100) [CustomerID]
      ,[CompanyName]
      ,[ContactName]
      ,[ContactTitle]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]
      ,[Country]
      ,[Phone]
      ,[Fax]
  FROM [Northwind].[dbo].[Customers]

  GO

SELECT COUNT(*) sayi, City FROM Customers
WHERE Country = 'UK'
GROUP BY City
HAVING COUNT(*) > 1
ORDER BY City;

-- Products 1den fazla kategori

SELECT DISTINCT Country AS Countries
FROM Customers;

SELECT * FROM Customers
WHERE Fax IS NOT NULL;



