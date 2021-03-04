/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * FROM Categories;

SELECT * FROM Products;

SELECT * FROM Categories
RIGHT JOIN Products 
ON Categories.CategoryID = Products.CategoryID;



SELECT Categories.CategoryName, COUNT(*) Duplicates
FROM Categories
INNER JOIN Products
ON Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryName
HAVING COUNT(*) > 1
ORDER BY Categories.CategoryName;

-- Arabalar (no, ad)
-- Renkler (no, ad)


-- Total Cost

SELECT UnitPrice, UnitsInStock
FROM Products
INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID
