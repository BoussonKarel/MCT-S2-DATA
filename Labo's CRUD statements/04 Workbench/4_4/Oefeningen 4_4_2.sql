-- Vanaf pg 41, WHERE oefeningen
USE artemis ;

-- Oef 1
/*
SELECT Klantnummer, Naam, Type
FROM tblklanten
WHERE Gemeente = 'Tienen';
*/

-- Oef 2
-- SELECT Productnaam FROM tblproducten WHERE categorienummer =  1;

-- Oef 3
/*
SELECT Naam
FROM tblklanten
WHERE Postnr = 3600;
*/

-- Oef 4
/*
SELECT Naam
FROM tblklanten
WHERE Type = 'P'
AND Saldo > 0
AND Gemeente = 'Tienen';
*/

-- Oef 5
/*
SELECT Naam, Gemeente
FROM tblklanten
WHERE Gemeente = 'Leuven' OR Gemeente = 'Herent';
*/

-- Oef 6
/*
SELECT Naam, Straat, concat(Postnr, " ", Gemeente) as 'Gemeente'
FROM tblklanten
WHERE Type = 'T' or Type = 'W';
*/

-- Oef 7
SELECT WerknemerID, concat(Voornaam, " ", Familienaam) as 'Volledige Naam', Geboortedatum
FROM tblwerknemers
WHERE YEAR(Geboortedatum) < 1950;