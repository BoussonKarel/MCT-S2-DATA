-- 4.5.2 pg 49
use artemis;

-- Oef 1
/*
select type, naam, gemeente
from tblklanten
where Type IN('T', 'W')
order by type ASC, naam;
*/

-- Oef 2
/*
select type, naam, gemeente
from tblklanten
where Type IN('T', 'W')
order by type DESC, naam;
*/

-- Oef 3
-- Extra spatie na Saldo, anders sorteert hij op de string
/*
select concat(Saldo, " €") as 'Saldo ', Naam, Gemeente
from tblklanten
order by Saldo DESC
*/