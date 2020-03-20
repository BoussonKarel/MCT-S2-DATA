use artemis;

-- 5.3.5.1 pg 78
-- Oef 1
-- Toon in alfabetische volgorde de categorieën en hun bijhorende producten waarvan er minder voorraad is dan bestellingen. Het resultaat ziet er als volgt uit (11):
SELECT P.Categorienummer, Categorienaam, Productnaam, (Voorraad - InBestelling) as `Tekorten`
FROM tblproducten as P
JOIN tblcategorieen as C
ON P.Categorienummer = C.Categorienummer
WHERE Voorraad < InBestelling
ORDER BY `Tekorten`;

-- Oef 2
-- Toon per land wat de leveranciers zijn en hoeveel producten ze leveren. Toon dat in volgorde van land en volgorde van leveranciers (16)
SELECT Land, Bedrijf, Concat(COUNT(Productnaam), ' producten') as 'Aantal producten'
FROM tblleveranciers as L
JOIN tblproducten as P
ON L.Leveranciersnummer = P.Leveranciersnummer
GROUP BY Land, Bedrijf
ORDER BY Land;

-- Oef 3
-- Toon per categorie hoeveel leveranciers er zijn. Doe dit in dalende volgorde van aantal leveranciers (8).
SELECT Categorienaam, COUNT(L.Leveranciersnummer) as `Aantal`
FROM tblcategorieen as C
JOIN tblproducten as P
ON C.Categorienummer = P.Categorienummer
JOIN tblleveranciers as L
ON P.Leveranciersnummer = L.Leveranciersnummer
GROUP BY Categorienaam
ORDER BY `Aantal` DESC;

-- Oef 4
-- Op het ERD zien we dat niet alle BTW tarieven worden gebruikt in de tblproducten. Welke BTW tarieven werden nog niet gebruikt?
SELECT DISTINCT B.BTWCode, BTWPercentage
FROM tblbtwtarief as B
JOIN tblproducten as P
ON B.BTWCode = P.BTWCode;

-- Oef 5
-- Het is goed mogelijk dat een product nog nooit besteld werd. Onderzoek via het ERD of deze uitspraak dat bevestigt.
-- Bewijs het aan de hand van een query. Toon de Nederlandse naam van deze nog nooit bestelde producten in alfabetische volgorde. (14)
SELECT DISTINCT(P.Productnummer), P.Productnaam
FROM tblproducten as P
LEFT JOIN tblorderinformatie as OI
ON P.Productnummer = OI.Productnummer
WHERE OI.Productnummer IS NULL;
/*
SELECT Productnummer, Productnaam
FROM tblproducten as P
WHERE P.Productnummer NOT IN (select distinct productnummer from tblorderinformatie);
*/

-- Oef 6
-- Geef het totaal verkoopcijfer van de werknemers. Ook de werknemers die niets verkochten staan vermeld (15). Sorteer in dalende volgorde van omzet.
SELECT W.Familienaam, Concat("€ ", Format(SUM(OI.Hoeveelheid * P.PrijsPerEenheid),2)) as `Omzet`
FROM tblwerknemers as W
LEFT JOIN tblorders as O
ON W.WerknemerID = O.WerknemerID
LEFT JOIN tblorderinformatie as OI
ON O.OrderID = OI.OrderID
LEFT JOIN tblproducten as P
ON OI.Productnummer = P.Productnummer
GROUP BY W.Familienaam
ORDER BY `Omzet` DESC;

-- Oef 7
-- Controleer of de volgende uitspraken WAAR of FOUT zijn en bewijs het aan de hand van een query.
-- a. Er zijn 3 leveranciers die geen producten leveren.
SELECT Bedrijf, COUNT(L.Leveranciersnummer) AS `Aantal producten`
FROM tblleveranciers as L
LEFT JOIN tblproducten as P
ON L.Leveranciersnummer = P.Leveranciersnummer
GROUP BY Bedrijf
HAVING `Aantal producten` = 0;
-- NIET WAAR

-- b. Alle producten zijn toegekend aan een categorie. Er zijn geen producten die niet werden toegekend aan een categorie
SELECT C.Categorienaam, COUNT(P.Productnummer) as `Aantal`
FROM tblproducten as P
JOIN tblcategorieen as C
GROUP BY C.Categorienaam
HAVING `Aantal` = 0;
-- WAAR

-- c. Er zijn 248 klanten die nog geen bestelling hebben geplaatst.
SELECT COUNT(K.Klantnummer) as `Geen bestelling geplaatst.`
FROM tblklanten as K
LEFT JOIN tblorders as O
ON K.Klantnummer = O.Klantnummer
WHERE O.OrderID IS NULL;

-- d. Het management kan niet aanvaarden dat er orders zijn waar de behandelende werknemer niet op vermeld staat. Hoeveel keer is deze fout dan wel gebeurd?
SELECT Count(OrderID)
FROM tblorders as O
RIGHT JOIN tblwerknemers as W
ON O.WerknemerID = W.WerknemerID
WHERE O.WerknemerID = NULL;

-- e. Er is geen enkele verzender, die nog geen order verstuurd heeft