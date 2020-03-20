-- 4.14.1 pg 62
use artemis;

-- Oef 1
-- Aantal producten per categorie, >50 euro
SELECT Categorienummer, concat(Count(Categorienummer), " stuks") as 'AANTAL PRODUCTEN'
FROM tblProducten
WHERE PrijsPerEenheid > 50 and Categorienummer is NOT NULL
GROUP BY Categorienummer;

-- Oef 2 klanten per gemeente
SELECT Gemeente, Count(klantnummer) as `Aantal klanten`
FROM tblklanten
GROUP BY Gemeente
ORDER BY `Aantal klanten` DESC;

-- Oef 3
-- Toon per gemeente hoeveel klanten er wonen, hou enkel de gemeenten over waar er meer dan 3 klanten wonen. = Resultaat van de group by
SELECT Gemeente, count(klantnummer) as `Aantal klanten`
FROM tblklanten
GROUP BY Gemeente HAVING `Aantal klanten` > 3
ORDER BY `Aantal klanten` DESC;

-- Oef 4
-- Toon hoeveel werknemers een bepaalde functie vervullen. Sorteer op de functie.
SELECT Functie, Count(WerknemerID) as `Aantal werknemers`
FROM tblwerknemers
GROUP BY Functie;

-- Oef 5
-- Pas de bovenstaande query aan zodat je ziet hoeveel mannelijke, hoeveel vrouwelijke werknemers een functie vervullen.
SELECT Functie, Geslacht, Count(WerknemerID) as `Aantal werknemers`
FROM tblwerknemers
GROUP BY Functie, Geslacht
ORDER BY Functie;

-- Oef 6
-- Toon hoeveel klanten geen ondernemingsnummer hebben.
SELECT count(Klantnummer)
FROM tblklanten
WHERE isnull(Ondernemingsnr);


-- Oef 7
-- Vul de eerste query uit deze oefeningen aan zodat je per categorie de waarde van de totale voorraad ziet. Je zorgt ervoor dat alle producten in rekening worden gebracht.
SELECT Categorienummer, concat(Count(Categorienummer), " stuks") as 'AANTAL PRODUCTEN', sum(voorraad * prijspereenheid) as `Voorraadwaarde`
FROM tblProducten
WHERE Categorienummer is NOT NULL
GROUP BY Categorienummer
ORDER BY Categorienummer;


-- Oef 8
-- Pas bovenstaande tabel aan zodat je van de leverancier met nummer 4 ziet, wat de waarde en het aantal producten van deze voorraad is per categorienummer.
SELECT Categorienummer, Leveranciersnummer, concat(Count(Categorienummer), " stuks") as 'AANTAL PRODUCTEN', concat(convert(format(sum(voorraad * prijspereenheid),2), char), " €") as `Voorraadwaarde`
FROM tblProducten
WHERE Leveranciersnummer = 4
GROUP BY Categorienummer, Leveranciersnummer
ORDER BY Categorienummer;

-- Oef 9
-- Toon per categorie voor leverancier met nummer 6, het aantal stuks en de waarde van de totale voorraad Toon alleen rijen die de totale voorraadwaarde van 1000 € overschrijden..
SELECT Categorienummer, Leveranciersnummer, concat(Count(Categorienummer), " stuks") as 'AANTAL PRODUCTEN', concat(convert(format(sum(voorraad * prijspereenheid),2), char), " €") as `Voorraadwaarde`
FROM tblProducten
WHERE Leveranciersnummer = 6
GROUP BY Categorienummer, Leveranciersnummer
HAVING sum(voorraad * prijspereenheid) > 1000
ORDER BY Categorienummer;

-- Oef 10
-- Toon van de orders de gemiddelde levertermijn per jaar.
SELECT YEAR(Orderdatum) as 'JAARTAL' , concat(FORMAT(AVG(DATEDIFF(leverdatum, orderdatum)),0), " dagen") as "LEVERTERMIJN"
FROM tblOrders
GROUP BY YEAR(Orderdatum);