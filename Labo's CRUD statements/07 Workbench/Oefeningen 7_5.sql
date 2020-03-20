-- 1. Zoek de klanten op die geen order hebben en hou het aantal bij (248).
SELECT * FROM tblklanten as K
LEFT JOIN tblorders as O
ON K.Klantnummer = O.Klantnummer
WHERE OrderID IS NULL;

-- 2. Delete één klant die geen orders heeft door een klantnummer in te geven.
DELETE tblklanten
FROM tblklanten
WHERE Klantnummer = 1;

-- 3. DELETE met één query drie klanten die geen orders hebben.
DELETE tblklanten
FROM tblklanten
WHERE Klantnummer In(2,3,4);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- Nu willen we een klant verwijderen die wel orders geplaatst heeft.
-- 1. Zoek de klant die het minst aantal orders heeft.
SELECT K.Klantnummer, K.Naam, COUNT(OrderID) as `Aantal orders` FROM tblklanten as K
JOIN tblorders as O
ON K.Klantnummer = O.Klantnummer
WHERE OrderID IS NOT NULL
GROUP BY K.Klantnummer, K.Naam
ORDER BY `Aantal orders`;
-- 2. Probeer deze klant te verwijderen. Wat stel je vast?
DELETE tblklanten
FROM tblklanten
WHERE Klantnummer = 210;
-- Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`artemis`.`tblorders`, CONSTRAINT `FK_tblOrders_tblKlanten` FOREIGN KEY (`Klantnummer`) REFERENCES `tblklanten` (`Klantnummer`))

-- 3. Bekijk hieronder de resultaten van een klant die wel verwijderd werd. Welke techniek werd toegepast in deze voorstellingen.
-- 4. Pas één van deze bovenstaande technieken toe om de klant met minste orders te verwijderen. Gebruik het klantnummer dat je opzocht.
-- SET NULL:
SELECT * FROM tblOrders WHERE Klantnummer IS NULL;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- 5. Artemis verkoopt geen zuivelproducten meer en wenst daarom de producten ervan “uit het assortiment” te nemen en de categorie “Zuivel” te verwijderen
-- a. Over hoeveel producten gaat het hier?
SELECT C.Categorienummer, C.Categorienaam, P.Productnummer, NederlandseNaam, UitAssortiment
FROM tblcategorieen AS C
JOIN tblproducten as P
ON C.Categorienummer = P.Categorienummer
WHERE Categorienaam = 'Zuivel';
-- 10 rows --> 10 producten

-- b. Zorg dat UitAssortiment aangevinkt staat (tblproducten) en verwijder de categorienaam (tblcategorieen).
UPDATE tblcategorieen AS C
JOIN tblproducten as P
ON C.Categorienummer = P.Categorienummer
SET UitAssortiment = 1
WHERE C.Categorienaam = 'Zuivel';

DELETE tblCategorieen
FROM tblCategorieen
WHERE Categorienummer = 4;

-- c. Is het een goed idee om de producten zelf niet te verwijderen? Toon dit aan.
SELECT *
FROM tblOrderinformatie as OI
JOIN tblProducten as P
ON OI.Productnummer = P.Productnummer
WHERE Categorienummer IS NULL;
-- Nee, er zijn bestellingen met die producten

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- Werknemer Davidson voerde een foutief order op. Het werd zogezegd geleverd op 26 mei 2006, maar bleek niet waar te zijn. Er wordt beslist om dit order volledig te verwijderen.
-- Hoe ga je te werk? Maak gebruik van een JOIN of SUBQUERY voor de uitwerking hiervan.

SELECT *
FROM tblorderinformatie
JOIN tblOrders as  O on O.OrderId = tblorderinformatie.OrderID
JOIN tblwerknemers  as W  on W.werknemerid = O.werknemerID
WHERE W.familienaam = "Davidson" AND O.leverdatum = "2006-05-22";

DELETE tblorderinformatie
FROM tblorderinformatie
JOIN tblOrders as  O on O.OrderId = tblorderinformatie.OrderID
JOIN tblwerknemers  as W  on W.werknemerid = O.werknemerID
WHERE W.familienaam = "Davidson" AND O.leverdatum = "2006-05-22";