-- 4.9.2 pg 53
use artemis;

-- Oef 1
-- Schuldsaldo klanten met ondernemingsnummer
/*
select count(ondernemingsnr) as 'Aantal Klanten', sum(saldo) as 'Saldo'
from tblklanten
*/

-- Oef 2
-- Alle orders op 6 augusuts 2008, op welk tijdstip dan ook
/*
select count(orderID) as 'Aantal op 6 augustus 2008'
from tblorders
where orderdatum between "2006-08-06 00:00:00" and "2006-08-06 23:59:59"
*/

-- Oef 3
-- Gemiddelde PrijsPerEenheid van alle producten, nadat ze met 10% verhoogd werden
/*
select avg(prijspereenheid*1.1) as 'Gemiddelde PrijsPerEenheid (110%)'
from tblproducten
*/

-- Oef 4
-- Vertegenwoordigers die vroeger dan 1933 in dienst waren
/*
SELECT *
from tblwerknemers
where functie = 'Vertegenwoordiger'  and year(indienst) < 1993
*/

-- Oef 5
-- Verschil in jaren tussen oudste en jongste
/*
select year(max(geboortedatum)) - year(min(geboortedatum)) as 'Jaren verschil'
from tblwerknemers
*/

-- Oef 6
-- Orders in 2005
/*
select count(orderid) as 'Orders in 2005'
from tblorders
where year(orderdatum) = 2005
*/

-- Oef 7
-- Gemidelde brutowedde v werknemer in bedrijf
/*
select avg(brutowedde) as 'Gemiddelde brutowedde'
from tblwerknemers
*/

-- Oef 8
-- Aantal mannen in dienst
/*
select count(geslacht) as 'Aantal mannen'
from tblwerknemers
where geslacht = 1
*/

-- Oef 9
-- verschil duurste en goedkoopste product
/*
select max(prijspereenheid) - min(prijspereenheid) as 'Verschil duurste en goedkoopste product'
from tblproducten
*/

-- Oef 10
-- #klanten uit Brussel
select count(klantnummer) as 'Aantal klanten', Gemeente
from tblklanten
where gemeente = 'Brussel'