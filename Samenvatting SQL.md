# Datamanagement: MySQL
## De SQL volgorde!
```sql
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT
```

## SELECT om waarden te selecteren uit 1 tabel
```sql
-- Basis
SELECT kolom1, kolom2, kolom3 FROM tabelnaam
```

### Berekeningen, nieuwe kolom, concat
Je kan ook een kolom gebruiken om een berekening te maken.

Je kan een nieuwe kolom maken met **AS**.
Gebruik enkele quotes of backticks bij meerdere woorden. */
```sql
SELECT Productnaam, PrijsPerEenheid, PrijsPerEenheid * 1.33 AS ‘Nieuwe prijs’  
FROM tblProducten
```
Om zaken te concateneren, gebruik je **CONCAT()**
```sql
-- CONCAT(string1, string2)
SELECT CONCAT("€ ", PrijsPerEenheid * 1.33) AS 'Nieuwe Verkoopprijs'
# Dit wordt € 23.727200
```

### Rijen selecteren met WHERE
Via de WHERE-clausule kan je bepalen welke rijen er getoond worden, welke rijen er aan bepaalde voorwaarden moeten voldoen.
```sql
SELECT naam, straat, postnr
FROM tblKlanten
WHERE saldo > 100

SELECT naam, gemeente, soort
FROM tblKlanten
WHERE Soort = 'P' OR SOORT = 'R'

SELECT naam, opmerking
FROM tblKlanten
WHERE opmerking IS NOT NULL				# NULL != ""
```

#### Gebruik van operatoren
In de WHERE-clausule kunnen meerdere operatoren gebruikt worden.
Vaak kan hetzelfde bereikt worden met meerdere operatoren.
|||
|---|---|
| **Vergelijkingsoperatoren** | =, <, >, <=, >=, <> of !=, <=> |
| **Wiskundige operatoren**   | +, -, *, / of % |
| **Booleaanse voorwaarden**  | AND, OR, NOT, XOR |
*_<=> is een gelijk aan die ook true returnt bij NULL <=> NULL_

**IN**-operator met een opsomming of subquery
_≈ Meerdere OR statements_
```sql
IN("A","B","C")
IN(SELECT Naam From ...)
```
**BETWEEN** (buitenwaarden inbegrepen)
_≈ Meerdere OR statements_
```sql
BETWEEN "2017-01-01" AND "2017-05-01"
```
**LIKE**
```sql
LIKE "%a_"
/*
% = wild character
_ = single character
*/
```
**REGEXP**
```sql
REGEXP'[0-9]*[a-z][A-Z]'	# zie verder
```
**MATCH**
```sql
MATCH title AGAINST "T-SQL"
-- ???
```
**NULL**
```sql
EntryDate is NULL
Category is NOT NULL
```
**EXISTS**
```sql
EXISTS (SELECT * FROM ...)
NOT EXISTS (SELECT * FROM ...)
```

#### Reguliere expressies
Zie samenvatting
Hoofdlettergevoelig zoeken:
```sql
-- Producten met kleine c, kleine y of grote B
WHERE Productnaam REGEXP BINARY '[cyB]'
```

### Resultaten sorteren met ORDER BY
Met **ORDER BY** kun je de volgorde vd rijen aanpasen.
Standaard is dit ASC (oplopend). Je kan dit ook DESC (oplopend) sorteren door dit mee te geven.
```sql
ORDER BY Productnaam				# A --> Z

ORDER BY Saldo DESC 				# Hoog --> Laag

ORDER BY Familienaam, Voornaam		# Eerst op familienaam, dan op voornaam
```

### Resultaten beperken met LIMIT
Met limit beperk je hoeveel rijen er getoond worden
```sql
LIMIT 5
```

### Dubbele gegevens filteren met DISTINCT
```sql
SELECT DISTINCT Gemeente
FROM tblKlanten
ORDER BY Gemeente;
```

### Ingebouwde functies
**Aggregaties** functies zijn functies voor wiskundige berekeningen op één of meerdere cijfers.
**Scalar** zijn functies voor wiskundige berekeningen op één of meerdere cijfers.

werken op een enkelvoudig element in (meestal een string)
Daarnaast kan je ook nog je eigen functies maken als developer.

#### Statische of aggregatie functies
Volgende aggregaties zijn mogelijk: **AVG(), COUNT(), FIRST, LAST(), LAST(), MAX(), MIN(), SUM()**
```sql
SELECT COUNT(klantnummer) AS 'Aantal klanten' FROM tblKlanten ...
SELECT SUM(saldo) AS 'Totaal klantensaldo' FROM tblKlanten ...
SELECT AVG(saldo) AS 'Gemiddeld klantensaldo' FROM tblKlanten ...
SELECT MAX(saldo) AS 'Grootste klantensaldo' FROM tblKlanten ...
SELECT MIN(saldo) AS 'Kleinste klantensaldo' FROM tblKlanten ...
SELECT MAX(saldo) - MIN(saldo) as 'VerschilSaldo FROM tblKlanten ...
```

#### Scalar functies
Gelijkaardig aan de functies voor berekeningen bij aggregaties bestaan er verschillende **functies op enkelvoudige elementen** zoals een string, datum. Dergelijke functies noemt met **scalar functies**.

**Overzicht**
Scalar functies op string types
**LEFT - RIGHT - SUBTRING - LTRIM - RTRIM - UPPER - LOWER** zijn scalar functies op string types
```sql
SELECT UPPER(Voornaam) FROM tblKlanten;
# Dit wordt "KAREL"
SELECT LOWER (Voornaam) FROM tblKlanten;
# Dit wordt "karel"

SELECT LEFT(Voornaam, 3) FROM tblKlanten
# Dit wordt "Kar"
SELECT RIGHT(Voornaam, 3) FROM tblKlanten
# Dit wordt "rel"

LTRIM() en RTRIM() verwijderen spaties (links/rechts)
```
**CURRENT_DATE() - NOW() - TIMESTAMPDIFF()  - DATEDIFF() - WEEK()** zijn scalar functies op datum types
Rekenen met datums: DATE_ADD, DATEDIFF, TIMESTAMPDIFF
```sql
SELECT DATE_ADD(Vervaldatum, INTERVAL 1 DAY) FROM tblOrders;
SELECT "2016-10-12" + INTERVAL 1 DAY;		# Geeft geen fout weer bij verkeerde datum!

SELECT DAYNAME(Vervaldatum) ...			# Returnt Monday / Tuesday / ...
SELECT DAYOFWEEK(Vervaldatum)			# Returnt 1 - 7 (Opgelet! Zondag = 1)

ORDER BY FIELD(DAYNAME(Indienst),'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' , 'Saturday', 'Sunday')
```
**ROUND - PI - POWER - ISNULL** zijn scalar functies op numerieke types

### IS NULL, ISNULL en IFNULL()
NULL is helemaal niets en dus niet te verwarren met een ledige string
```sql
IFNULL(expr1, expr2)
# = controlestructuur.
# Geeft expr2 terug als de waarde van expr1 NULL is

ISNULL(expr1)
# Geeft 0 terug als expr1 NULL is en dus 1 in het ander geval.
# Handig om bijvoorbeeld NULL naar 0 om te zetten bij sorteren
```

### Andere veel gebruikte functies
Het kan nodig zijn om voor weergave een datatype aan te passen. Gebruik hiervoor **CAST()**
```sql
CAST('2017-01-01' AS DATE)
```

### Groeperen van rijen met GROUP BY en HAVING
Met een GROUP BY clausule groepeer je rijen op basis van overeenkomsten tussen rijen.
GROUP BY krijgt hiervoor één of meerdere kolommen aangeboden waarop je groepering wenst.

Om groepering weer te geven herhaal je alle opgesomde kolommen in de GROUP BY ook in het SELECT statement.

```sql
SELECT Gemeente, SUM(Saldo) 	# Aggregatie functie SUM()
FROM tblKlanten
GROUP BY Gemeente
ORDER BY Gemeente
-- Gemeente	-	SUM(saldo)
# Brugge	-	80
# Gent		-	10
# Kortrijk	-	20

SELECT YEAR(Orderdatum) as 'JAARTAL' , FORMAT(AVG(DATEDIFF(leverdatum, orderdatum)),0) as "LEVERTERMIJN"
FROM tblOrders
GROUP BY YEAR(Orderdatum);
-- JAARTAL	-	LEVERTERMIJN
# 2003		-	10
# 2004		-	9
# 2005		-	9
# 2006		-	8
```

In plaats van WHERE kan je ook **HAVING** gebruiken.
Het verschil is dat met _HAVING_ eerst alle data wort opgehaald met een eerste query en nadien de filtering gebeurd met een tweede instructie.

**Wanneer is dit noodzakelijk?**
Een HAVING laat toe om een voorwaarde met een aggregatie functie op te nemen in zijn groepering.
```sql
# Werkt niet!
WHERE SUM(InBestelling) > 10
GROUP BY Productnummer

# Werkt wel
GROUP BY Productnummer
HAVING SUM(InBestelling) > 10
```

### Controlestructuren in SELECT statements
De SELECT expressie kan opgebouwd worden met controle structuren. Dit kunnen zowel conditionele **IF()**, **IFNULL()** als lus structiren zijn (**CASE**).

**CASE** is vooral handig wanneer de data onbegrijpbaar is voor de gebruiker en je dit wil vervangen door een meningsvolle weergave.
```sql
SELECT
	CASE GESLACHT
		WHEN '1' THEN 'Vrouw'
		WHEN '2' THEN 'Man'
	END AS `Man/Vrouw`,
	Familienaam
FROM tblWerknemers
ORDER BY FIELD(`Man/Vrouw`,'Man','Vrouw','?'), Familienaam;
```
**IF()** kan je gebruiken als er slechts 2 keuzes zijn.
```sql
SELECT
	Familienaam, Voornaam,
	IF(auto = 0, "HEEFT GEEN AUTO", "HEEFT WEL EEN AUTO") AS "Firmawagen?"
FROM tblWerknemers;
```

## SELECT om waarden te selecteren uit MEERDERE tabellen
### Inleiding
Zie samenvatting voor info over **tabellen en relaties**, **soorten joins**...
### Subquery
Een subquery komt altijd **tussen haakjes** vooafgegaan door een andere aanroepende tabelexpressie. Het keyword is meestal **IN**, **NOT IN**, **WHERE EXISTS** of **WHERE NOT EXISTS**, maar kan ook een WHERE zijn.

```sql
-- Producten waarvan de voorraadwaarde > laagste brutoloon
SELECT Nederlandsenaam, (PrijsPerEenheid * Voorraad) as `Voorraadwaarde`
FROM tblproducten
WHERE (prijspereenheid * voorraad) > (SELECT min(brutowedde) from tblwerknemers);

-- Klanten met toevallig dezelfde naam als een werknemer
SELECT Naam, Gemeente, Postnr, Straat
FROM tblklanten
WHERE Naam IN(SELECT Familienaam FROM tblWerknemers WHERE Familienaam = Naam);

-- Werknemers die nooit een bestelling opmaakten
SELECT concat(Voornaam, " ", Familienaam) as `Volledige naam`
FROM tblwerknemers
WHERE WerknemerID NOT IN(SELECT DISTINCT WerknemerID FROM tblorders);

-- Klanten die nog niets hebben besteld
SELECT Naam
FROM tblklanten
WHERE NOT EXISTS (SELECT * FROM tblOrders WHERE tblOrders.Klantnummer = tblklanten.Klantnummer)
```

### Joins
**ON** zorgt voor een perfecte vertaling van de relatie door de twee kolommen van de relatie op te halen en aan elkaar gelijk te stellen
```sql
SELECT tblProducten.*, tblCategorieen.categorienummer AS CategoryID
FROM tblProducten as P
JOIN tblCategorieen as C ON C.categorienummer = P.categorienummer
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTk5MjEwNTE4LC0xMjYyMTg0ODIxLC05OD
Q0Mjk5NjUsMjA3MDA0MTQwNiw0MTU3NjU2MTNdfQ==
-->