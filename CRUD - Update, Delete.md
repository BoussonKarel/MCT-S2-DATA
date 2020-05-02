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

### Safe upate error
Wanneer er geen PK in de WHERE-clausula staat kan dit aan foutmelding geven. Dit kan je op meerdere manieren oplossen:

 1. Plaats je editor in unsafe mode (Edit >> Preferences >> SQL Editor).
 2. Voeg de PK toe aan de WHERE statement met een voorwaarde die altijd waar is (bv. 'AND Klantnummer > 0').

<!--stackedit_data:
eyJoaXN0b3J5IjpbMzc3NDY0NDQzLDE4OTM5MDM4NjNdfQ==
-->