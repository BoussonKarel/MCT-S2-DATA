-- 5.2.2 pg 72
use artemis;

-- Oef 1
-- Toon de producten waarvan de voorraad waarde (prijs per eenheid * voorraad) groter is dan het laagste brutoloon van de werknemers
SELECT Nederlandsenaam, PrijsPerEenheid, Voorraad, (PrijsPerEenheid * Voorraad) as `Voorraadwaarde`
FROM tblproducten
WHERE (prijspereenheid * voorraad) > (SELECT min(brutowedde) from tblwerknemers);

-- Oef 2
-- Zoek de klanten die toevallig dezelfde naam hebben als de familienaam van een werknemer
SELECT Naam, Gemeente, Postnr, Straat
FROM tblklanten
WHERE Naam IN(SELECT Familienaam FROM tblWerknemers WHERE Familienaam = Naam);

-- Oef 3
-- Selecteer de klanten (tblklanten) die in 2006 hun bestelde orders (tblorders) toegeleverd kregen in minder dan een maand. (7)
/* Subquery mogelijkheid
SELECT Klantnummer, MIN(DATEDIFF(leverdatum, orderdatum))
FROM tblorders
WHERE Year(Orderdatum) = 2006
GROUP BY Klantnummer
HAVING MIN(DATEDIFF(leverdatum, orderdatum)) <= 31;
*/
SELECT Klantnummer, Gemeente, Postnr, Straat
FROM tblklanten
WHERE Klantnummer IN(
	SELECT DISTINCT klantnummer FROM tblorders
	WHERE datediff(leverdatum, orderdatum) <= 31 and year(orderdatum) = 2006
);

-- Oef 4
-- Toon alle productgegevens (tblproducten) die een bestelling plaatsten met een korting groter dan of gelijk aan 25%. (59)
SELECT * FROM tblproducten
WHERE Productnummer IN(SELECT DISTINCT Productnummer FROM tblorderinformatie WHERE Korting >= 0.25);

-- Oef 5
-- Geef in alfabetische volgorde de volledige naam van alle werknemers die nooit een bestelling plaatsten (7).
SELECT concat(Voornaam, " ", Familienaam) as `Volledige naam`
FROM tblwerknemers
WHERE WerknemerID NOT IN(SELECT DISTINCT WerknemerID FROM tblorders);

-- Oef 6
-- Geef de naam van elke werknemer die in dienst trad tussen de indiensttreding (datum) van Smets en. Daponte. Sorteer dalend volgens de datum van indiensttreding.(5)
SELECT concat(Voornaam, " ", Familienaam) as `Volledige naam`, InDienst
FROM tblwerknemers
WHERE InDienst BETWEEN (SELECT Indienst FROM tblwerknemers WHERE Familienaam = 'Smets') AND (SELECT Indienst FROM tblwerknemers WHERE Familienaam = 'Daponte')
ORDER BY InDienst;