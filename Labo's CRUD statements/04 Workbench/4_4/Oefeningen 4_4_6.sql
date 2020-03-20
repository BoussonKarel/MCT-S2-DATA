-- 4.4.6
USE artemis ;

-- Oef 1
-- SELECT NederlandseNaam from tblproducten where NederlandseNaam like "%thee";

-- Oef 2
/*
SELECT NederlandseNaam from tblproducten
where nederlandsenaam like('%vlees%') or nederlandsenaam like('%kaas%');
*/

-- Oef 3
SELECT NederlandseNaam, prijspereenheid from tblproducten
where nederlandsenaam like('%vlees%') or nederlandsenaam like('%kaas%')
and PrijsPerEenheid < 32;