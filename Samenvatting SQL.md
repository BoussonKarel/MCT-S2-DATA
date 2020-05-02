# Datamanagement: MySQL
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
Het kan nodig zijn om voor weergave een datatype aan te passen. Gebruik hiervoor **CAST()**
```sql
CAST('2017-01-01' AS DATE)
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
```sql
REGEXP'[0-9]*[a-z][A-Z]'	# zie verder
/*


*/
```


WHERE YEAR(Geboortedatum) < 1950
<!--stackedit_data:
eyJoaXN0b3J5IjpbMjA3MDA0MTQwNiw0MTU3NjU2MTNdfQ==
-->