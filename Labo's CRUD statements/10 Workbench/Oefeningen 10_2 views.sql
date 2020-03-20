use artemis;

-- Voorbeeld
CREATE VIEW vwProducten AS
	SELECT tblProducten.*, tblCategorieen.categorieNummer
    AS CNr, tblCategorieen.categorienaam
    FROM tblProducten
    JOIN tblCategorieen
    ON tblProducten.categorienummer = tblCategorieen.categorienummer;

-- 10.2 pg 95
-- 1. Maak een view aan die alle gegevens van fruit teruggeeft. De view returnt ENGELSE namen voor zijn kolommen.
-- Dit is een techniek die vaak gebruik worden om tabelresultaten naar diverse talen om te zetten.
CREATE VIEW vwEngelseproducten AS
	SELECT C.Categorienaam AS `Category Name`, C.Categorienummer AS `Category Number`, P.Productnummer AS `Product Number`, P.NederlandseNaam AS `Dutch Name`, P.Leveranciersnummer AS `Supplier Number`, P.HoeveelheidPerEenheid AS `Unit quantity`, P.Voorraad AS `Stock Quantity`, P.BTWCode AS `BTWCode`, P.InBestelling AS `On Order`, P.Bestelpunt as `Orderpoint`, P.UitAssortiment as `No longer available`
	FROM tblCategorieen AS C
	JOIN tblProducten AS P
	ON C.Categorienummer = P.Categorienummer;

SELECT * FROM vwEngelseproducten;

-- 2. Maak gebruik van een view om per categorie de producten weer te geven met hun prijs.
-- Sorteer stijgend per categorienaam, dalend per eenheidsprijs.


-- 3. Kan je gebruik maken van dezelfde view om alle producten weer te geven die nog geen categorie hebben?
-- Pas desnoods de vorige view aan zodat dit wel lukt.
