-- 4.16.1 pg 65
use adventureworks2014;

-- Oef 1
-- Gebruik de tabel Person om personen op te zoeken met een middlename ‘J’ en een lastname ‘Alexander’ of ‘Zhang’. Je toont FirstName, MiddleName, LastName en ID’s.
SELECT BusinessEntityID, FirstName, MiddleName, LastName
FROM person
WHERE BusinessEntityID is not null and MiddleName = 'J' and LastName IN('Alexander','Zhang');

-- Oef 2
-- Gebruik de tabel Product table om alle Producten te tonen (met ID, Name, Size, Color) waar Size of Color nog NULL zijn.
SELECT ProductID, Name, Size, Color
FROM product
WHERE Size is null OR Color is null

-- Oef 3
-- 