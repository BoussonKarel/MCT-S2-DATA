# Datamanagement: MySQL
## Data aanpassen met UPDATE
```sql
UPDATE tabel
SET kolom = nieuwe_waarde
WHERE voorwaarde;

UPDATE tabel
SET kolom1 = x, kolom2 = y, kolom3 = z
WHERE voorwaarde;
```
Kan ook gecombineerd worden met JOINs
```sql
UPDATE tblproducten as P
JOIN tblorderinformatie as OI ON P.Productnummer = OI.Productnummer
SET Korting = 0.25
WHERE Voorraad >= 123;
```

### Safe update error
Wanneer er geen PK in de WHERE-clausula staat kan dit aan foutmelding geven. Dit kan je op meerdere manieren oplossen:
 1. Plaats je **editor in unsafe mode** (Edit >> Preferences >> SQL Editor).
 2. **Voeg de PK toe** aan de WHERE statement met een voorwaarde die **altijd waar** is (bv. 'AND Klantnummer > 0').

## Data verwijderen met DELETE
```sql
DELETE FROM tabelnaam
WHERE voorwaarde;

DELETE FROM tabelnaam
WHERE voorwaarde
LIMIT(5)
# Eerste 5 verwijderen
```
### Delete van records en relaties
Indien er een één-op-veel relatie is tussen twee tabellen kan bij het verwijderen aan de één-zijde een actie worden uitgevoerd aan de veel zijde van de relatie. Wat in de gerelateerde tabel al dan niet verwijderd wordt, hangt echter af van de definitie van de relatie.

**Restrict** [DEFAULT]
DELETE op de parent wordt `verhinderd als er nog gerelateerde records bestaan` in de child tabel.
_Voorbeeld: Je kan een categorie niet verwijderen als er nog producten van die categorie bestaan._

**Cascade** [DEFAULT]
Bij een DELETE op de parent worden `ook alle gerelateerde records verwijderd` zonder waarschuwing.
_Voorbeeld: Verwijderen van de categorie verwijdert ook alle producten van die categorie._

**Set Null** [DEFAULT]
Bij een DELETE op de parent worden `alle gerelateerde keyvelden op NULL geplaatst`. Zo blijft de data van de andere velden in het gerelateerde record ongewijzigd.
_Voorbeeld: Verwijderen van de categorie verwijdert de producten niet. Categorienummer staat bij de producten op NULL_

**No Action** [DEFAULT]
Parent record kan niet worden verwijderd als er nog kinderen zijn.
_In MySQL doet dit hetzelfde als RESTRICT_

## Gegevens invoeren met INSERT
```sql
INSERT INTO tblWerknemers (Familienaam, Voornaam)
VALUES ("Bousson", "Karel");

INSERT INTO tblCategorieen
VALUES (NULL, "De beschrijving", "Categorienaam");
-- NULL is in dit geval de PK (auto increment)
```

### Gegevens toevoegen uit andere tabel
```sql
INSERT INTO tblwerknemers(Familienaam, Adres, Gemeente, Postcode)
	SELECT naam, straat, gemeente, postnr
	FROM tblKlanten
	WHERE gemeente= 'Herent'
```

### Nieuwe tabel op basis van een andere tabel

<!--stackedit_data:
eyJoaXN0b3J5IjpbMjEwMzcyNzQ2MSw4MTUyMzM2MDQsMTcyNT
gyMjkzOV19
-->