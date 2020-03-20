-- (4.4.4) Vanaf pg 44
USE artemis ;

-- Oef 1
-- SELECT Klantnummer, Naam, Straat, concat(Postnr, " ", Gemeente) as 'Postnr & Gemeente' FROM tblklanten;

-- Oef 2
/*
SELECT Klantnummer, Naam, Straat, concat(Postnr, " ", Gemeente) as 'Postnr & Gemeente', Saldo
FROM tblklanten
-- WHERE Saldo >= 150 AND Saldo <= 300
WHERE Saldo BETWEEN 150 AND 300
ORDER BY Saldo DESC;
*/

-- Oef 3/4
/*
SELECT concat(Voornaam, " ", Familienaam) as 'Volledige Naam'
FROM tblwerknemers
-- WHERE Month(Geboortedatum) BETWEEN 7 AND 8;
WHERE Month(Geboortedatum) NOT BETWEEN 7 AND 8;
*/

-- Oef 5
/*
SELECT concat(Voornaam, " ", Familienaam) as 'Volledige Naam'
FROM tblwerknemers
WHERE Geboortedatum BETWEEN '1960-01-01' AND '1966-01-27'
ORDER BY Geboortedatum;
*/

-- Oef 6/7
/*
SELECT Klantnummer, Naam
FROM tblklanten
-- WHERE Gemeente IN('Leuven', 'Herent', 'Kessel-Lo', 'Heverlee');
WHERE Gemeente NOT IN('Leuven', 'Herent', 'Kessel-Lo', 'Heverlee');
*/

-- Oef 8
SELECT concat(NederlandseNaam, " (", Productnaam, ")") as Naam, Categorienummer
FROM tblproducten
WHERE Categorienummer IN (1,2,3,4,8);