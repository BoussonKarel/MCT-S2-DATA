-- Pg 41
USE artemis ;

-- Oefening 1
SELECT Productnaam, NederlandseNaam as 'Nederlandse Naam',
concat(PrijsPerEenheid *2, " €") as 'Verkoopprijs'
FROM tblproducten
ORDER BY PrijsPerEenheid DESC;

-- Oefening 2
SELECT Productnummer, Productnaam, PrijsPerEenheid,
PrijsPerEenheid * Voorraad as 'Voorraadwaarde',
concat(Voorraad, ' stuks') as Voorraad,
concat(PrijsPerEenheid * .85, " €") as Aankoopprijs
FROM tblproducten;