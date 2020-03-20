-- 4.8 pg 51
use artemis;

-- Oef 1
-- Personeelsleden in dienst genomen in 1993, gesorteerd dalend op datum
/*
select Familienaam, Voornaam, Gemeente, indienst
from tblwerknemers
where year(indienst) = 1993
order by indienst desc
*/

-- Oef 2
-- Welke klanten (alfabetisch) wonen er in Leuven?
/*
select naam, gemeente
from tblklanten
where gemeente = 'Leuven'
order by naam
*/

-- Oef 3
-- Naam & voornaam van vrouwelijke personeelsleden uit Leuven
/*
select familienaam, voornaam, geslacht, gemeente
from tblwerknemers
where geslacht = 2 and gemeente = 'Leuven'
*/

-- Oef 4
-- Naam en voornaam van mannelijke personeelsleden niet in Kessel-lo, Herent of Leuven
/*
select familienaam, voornaam, geslacht, gemeente
from tblwerknemers
where geslacht = 1 and gemeente NOT IN('Kessel-lo', 'Herent', 'Leuven');
*/

-- Oef 5
-- Klanten (alfabetisch) saldo groter dan 175 euro
/*
select klantnummer, naam, saldo
from tblklanten
where saldo > 175
order by naam
*/

-- Oef 6
-- Geef een lijst vd klanten waarvan de naam begint met Van
/*
select naam, klantnummer
from tblklanten
where naam like 'Van%'
*/

-- Oef 7
-- Familienaam én gemeente in hoofdletters (UPPER())
-- niet in Leuven, Herent, Peer of Genk
/*
select upper(gemeente) as Gemeente, UPPER(familienaam) as Familienaam
from tblwerknemers
where gemeente not in('Leuven', 'Herent', 'Peer', 'Genk')
order by gemeente
*/

-- Oef 8
-- productnaam, voorraad, inBesteling, bestelpunt, dringende tekorten
-- die moet bijbesteld worden >>> (aantal in voorraad - aantal bestellingen) < bestelpunt
-- sorteren zodat hoogste aantal dringende bijbestellingen (aantal tekorten) bovenaan staan
/*
select Productnaam, voorraad,  inbestelling, bestelpunt, (voorraad - inbestelling) as `Dringende tekorten`
from tblproducten
where (voorraad - inbestelling) < bestelpunt
order by `Dringende tekorten` ASC
*/

-- Oef 9
/*
select concat(upper(bedrijf)," uit ",upper(land)) as `BEDRIJF en LAND`
from tblleveranciers
where land not in('Spanje', 'Verenigd Koninkrijk')
order by bedrijf
limit 5
*/

-- Oef 10
select distinct(land)
from tblleveranciers
order by land