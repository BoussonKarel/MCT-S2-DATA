-- 4.4.9 (pg 48)
use artemis;

-- Oef 1
-- productnummer begint op chef en eindigt op mix
/*
select productnaam
from tblproducten
where Productnaam REGEXP('^chef') and Productnaam REGEXP('mix$')
-- where Productnaam REGEXP('^chef.*mix$')
*/

-- Oef 2
-- Woorden met KLEINE letter c in
-- ENIGE MANIER HOOFDLETTERGEVOELIG ZOEKEN
/*
select productnaam
from tblproducten
where Productnaam REGEXP BINARY 'c'
order by productnaam;
*/

-- Oef 3
-- Producten met kleine c, kleine y of grote B
/*
select productnaam
from tblproducten
where productnaam regexp binary '[cyB]'
*/

-- Oef 4
-- Klanten met openstaand saldo van 4 karakters
/*
select naam, saldo
from tblklanten
where saldo regexp ('.{4}')
*/

-- Oef 5
-- BTW-tarieven nakijken
-- 1 getal, een punt, 2 getallen
select btwpercentage from tblbtwtarief
where btwpercentage regexp('\\d{1}[.]\\d{2}')