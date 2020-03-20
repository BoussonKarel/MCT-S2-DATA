use artemis;

-- Voor producten waarvan de voorraad hoger of gelijk is aan 123, passen we de korting aan naar 0.25.
-- Gebruik een Join tussen producten en orderinformatie.Haal eerste deze producten op met een query. Nadien werk je de update uit met een SET.
SELECT P.Productnummer, Voorraad, OrderID, Hoeveelheid, Korting, 0.25 as 'Nieuwe korting'
FROM tblproducten as P
JOIN tblorderinformatie as OI
ON P.Productnummer = OI.Productnummer
WHERE Voorraad >= 123;
-- UPDATE
UPDATE tblproducten as P
JOIN tblorderinformatie as OI
ON P.Productnummer = OI.Productnummer
SET Korting = 0.25
WHERE Voorraad >= 123;