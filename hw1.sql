--1.
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product

--2.
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE ListPrice <> 0

--3.
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NULL

--4.
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL

--5.
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL AND ListPrice > 0

--6.
SELECT Name, Color
FROM Production.Product
WHERE Color IS NOT NULL

--7.
SELECT Name, Color
FROM Production.Product
WHERE COLOR IN ('Black', 'Silver') and (Name LIKE '%Crankarm' OR Name LIKE 'Chainring%')

--8.
SELECT ProductID, Name
FROM Production.Product
WHERE ProductID BETWEEN 400 AND 500

--9.
SELECT ProductID, Name
FROM Production.Product
WHERE color IN ('black', 'blue')

--10.
SELECT name
FROM Production.Product
WHERE Name LIKE 'S%'

--11.
SELECT Name, ListPrice
FROM Production.Product
WHERE name LIKE 'Seat%' OR name LIKE 'Short% L' OR name LIKE 'Short%M' 
ORDER BY name ASC
OFFSET 0 ROWS
FETCH NEXT 6 ROWS ONLY;

--12.
SELECT Name, ListPrice
FROM Production.Product
WHERE name LIKE 'A%' OR name LIKE 'S%'
ORDER BY name ASC
OFFSET 0 ROWS
FETCH NEXT 5 ROWS ONLY;

--13.
SELECT Name
FROM Production.Product
WHERE name LIKE 'SPO[^K]%'
ORDER BY name ASC

--14.
SELECT DISTINCT Color
FROM Production.Product
ORDER BY Color DESC

--15.
SELECT DISTINCT ProductSubcategoryID, Color
FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL AND Color IS NOT NULL