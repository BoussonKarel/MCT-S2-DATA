from models.Klant import Klant
from repositories.Database import Database

class KlantRepository:
    @staticmethod
    def read_all():
        categories = []
        sql = "SELECT Klantnummer, Naam, Type, Gemeente, Saldo FROM artemis.tblklanten"
        rows = Database.get_rows(sql)

        if rows is not None:
            for row in rows:
                # mapping naar object
                categories.append(KlantRepository.map_to_object(row))
        return categories
    
    @staticmethod
    def details(id):
        # 1. valideer
        if not id:
            return "Ongeldig klantnummer. Probeer opnieuw."
        # 2. sql expressie
        sql = "SELECT Klantnummer, Naam, Type, Gemeente, Saldo "
        sql += "FROM artemis.tblklanten WHERE Klantnummer = %s "
        values = [id]

        # 3. uitvoer met foutcontrole
        result = Database.get_one_row(sql, values) # data ophale of foutboodschap

        if type(result) is dict:
            # mapping naar Categorie object
            result = KlantRepository.map_to_object(result)
        return result

# helpers -----------------------------------------------
    @staticmethod
    def map_to_object(row):
        if (row is not None) and (type(row) is dict):
            klantnummer = int(row["Klantnummer"])
            naam = KlantRepository.checkColumn(row, "Naam")
            klanttype = KlantRepository.checkColumn(row, "Type")
            gemeente = KlantRepository.checkColumn(row, "Gemeente")
            saldo = KlantRepository.checkColumn(row, "Saldo")
        return Klant(klantnummer, naam, klanttype, gemeente, saldo)

    @staticmethod
    def checkColumn(row, columnName):
        result=""
        if (columnName in row.keys() and row[columnName] is not None): # controle op Null
            result = row[columnName]
        return result