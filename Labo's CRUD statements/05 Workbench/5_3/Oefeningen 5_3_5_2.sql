use northwind;
-- Oef 5.3.5.2 pg 80

-- Oef 1
-- Voor alle orders met een ID groter of gelijk aan 11070 willen we de omzet (= aantal * price met korting). Bovenaan staat het Order met de grootste omzet. Ook de bestelmaand is zichtbaar.
SELECT Concat("€ ", FORMAT((quantity * unit_price), 2)) as `OrderPrice`
FROM orders as O
JOIN order_details as OD
ON O.id = OD.order_id
WHERE O.id >= 78;

-- Oef 2
-- Joinen kan ook met meer dan 2 kolommen. Pas bovenstaande query aan, zodat je de producten ziet vandeze orders. De orderlijnen staan in dalende orde van bestelhoeveelheid (quantity).
SELECT O.id as 'Order ID' , P.id as 'Product ID', product_name, quantity
FROM orders as O
JOIN order_details as OD
JOIN products as P
ON O.id = OD.order_id
WHERE O.id >= 78
ORDER BY quantity DESC;

-- Oef 3
-- Welke twee Customers hebben nog geen orders geplaatst?
SELECT C.company, O.id
FROM customers as C
LEFT JOIN orders as O
ON C.id = O.customer_id
WHERE o.id IS NULL;

-- Oef 4
-- Toon met een subquery (SELECT WHERE IN )per land welke customerID’s wel terug te vinden zijn in orders. (15)
SELECT C.country_region, C.id as 'Customer ID' , COUNT(o.id) as 'Orders'
FROM customers as C
LEFT JOIN orders as O
ON C.id = O.customer_id
WHERE o.id IS NOT NULL
GROUP BY C.country_region, C.id;

-- Oef 5
-- Om nieuwjaarswensen te versturen willen we één lijst met alle namen van Employees,
-- en Customers met hun adres, gesorteerd volgens de stad.
-- We wensen een identificatie of de persoon ofwel een customer ofwel een employee is. Tip: maak gebruik van een UNION.
SELECT *
FROM customers
UNION employees;