use artemis;

-- Oef 1
-- De klant die order 11078 plaatste, wil van de producten die hij bestelde telkens 5 stuks meer bestellen.
SELECT OrderID, Hoeveelheid, (Hoeveelheid +5) FROM
tblorderinformatie
WHERE OrderID = 11078;
-- UPDATE
UPDATE tblOrderinformatie
SET Hoeveelheid = (Hoeveelheid +  5)
WHERE OrderID = 11078;

-- Oef 2
-- Verhoog de saldo’s van de klanten met 10 % indien hun saldo groter is dan 1 000 euro.
SELECT Klantnummer, Saldo, round(Saldo * 1.1,2) FROM tblKlanten
WHERE Saldo > 1000;
-- UPDATE
UPDATE tblKlanten SET Saldo = round(Saldo * 1.1,2)
WHERE Saldo > 1000;

-- Oef 3
-- De familie Vandeput is verhuisd van de Speelberg 6 in Linden naar de Zandloperstraat 9 in 9030 Mariakerke
SELECT * FROM tblklanten WHERE Naam = 'Vandeput';
UPDATE tblklanten
SET Straat = 'Zandloperstraat 9', Gemeente = 'Mariakerke', Postnr = 9030
WHERE Naam = 'Vandeput';

-- Oef 4
-- Er zijn vervaldatums die vóór de leverdatum liggen in tblorders. Omdat dat niet erg logisch is passen we deze vervaldatum aan.
-- Wanneer de vervaldatum meer dan 10 dagen vóór de leverdatum ligt, wordt de vervaldatum gelijk aan de leverdatum verhoogd met een random getal van 5 dagen ( rand() * 5 ).
SELECT OrderID, Klantnummer, Orderdatum, Vervaldatum, Leverdatum, DATEDIFF(Vervaldatum, Leverdatum), DATE_ADD(Leverdatum, INTERVAL (rand()*5) DAY) as 'Nieuwe vervaldatum' FROM tblOrders WHERE DATEDIFF(Vervaldatum, Leverdatum) <= -10;
-- UPDATE
UPDATE tblOrders
SET Vervaldatum = DATE_ADD(Leverdatum, INTERVAL (rand()*5) DAY)
WHERE DATEDIFF(Vervaldatum, Leverdatum) <= -10;

-- Oef 5
-- In tblWerknemers is het cijfer 1 en cijfer onduidelijk om het geslacht aan te duiden. Verander met een update de 1 naar “M” en de 0 naar “V”.
SELECT *, (CASE WHEN geslacht=1 THEN "M" ELSE "V" END)
FROM tblwerknemers;

UPDATE tblWerknemers
SET geslacht =
	CASE
		WHEN geslacht=1 THEN "M"
		ELSE "V"
	END;
    
SELECT * FROM tblwerknemers;