-- pg 57 oef 4.12
use artemis;

-- Oef 1
-- nog niet geleverd
/*
select OrderID, Orderdatum
from tblorders
where leverdatum is null
*/

-- Oef 2
-- Gemiddelde tijd tss vervaldatum en orderdatum voor wel geleverde orders
/*
select avg(timestampdiff(day,orderdatum,vervaldatum)) as 'Gemiddelde tijd tussen verval- en orderdatum'
from tblorders
where leverdatum is not null
*/

-- Oef 3
-- alle orders niet geleverd op maandag of vrijdag
/*
select orderid,klantnummer,leverdatum,dayname(leverdatum),dayofweek(Leverdatum)
from tblorders
where dayname(leverdatum) not in ('Monday', 'Friday')
*/

-- Oef 4
-- zelfde, maar sorteren
select orderid,klantnummer,leverdatum,dayname(leverdatum),dayofweek(Leverdatum)
from tblorders
where dayname(leverdatum) not in ('Monday', 'Friday')
order by dayofweek(leverdatum)