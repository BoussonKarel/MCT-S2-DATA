-- 4.15 pg 64
use artemis;

-- Oef 1
-- Ga vooraf op zoek in de MySQL referentie hoe je IF() functie kan gebruiken.
-- Wanneer er slects 2 keuzes zijn kan je immers een IF() gebruiken in plaats van een CASE.
-- Zoek in de referentie wel naar de IF() voor controlestructuren. Er bestaan ook nog andere IFs… Gebruik nu de IF() om volgende weergave te maken uit de tabel tblWerknemers waarbij de kolom ‘Auto anders weergegeven wordt.
SELECT Familienaam, Voornaam, IF(auto = 0, "HEEFT GEEN AUTO", "HEEFT WEL EEN AUTO") AS `Firmawagen?`
FROM tblwerknemers;

-- Oef 2
-- 