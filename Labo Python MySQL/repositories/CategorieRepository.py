from models.Categorie import Categorie
from repositories.Database import Database

class CategorieRepository:
    @staticmethod
    def read_all():
        categories = []
        sql = "SELECT Categorienummer, Categorienaam, Bijschrijving FROM artemis.tblcategorieen"
        rows = Database.get_rows(sql)

        if rows is not None:
            for row in rows:
                # mapping naar object
                categories.append(CategorieRepository.map_to_object(row))
        return categories
    
    @staticmethod
    def details(id, withProducts = False):
        # 1. valideer
        if not id:
            return "Ongeldig categorienummer. Probeer opnieuw."
        # 2. sql expressie
        sql = "SELECT Categorienummer, Categorienaam, Bijschrijving "
        sql += "FROM artemis.tblcategorieen WHERE Categorienummer = %s "
        values = [id]

        # 3. uitvoer met foutcontrole
        result = Database.get_one_row(sql, values) # data ophale of foutboodschap

        if type(result) is dict:
            # mapping naar Categorie object
            result = CategorieRepository.map_to_object(result)
        return result

# helpers -----------------------------------------------
    @staticmethod
    def map_to_object(row):
        if (row is not None) and (type(row) is dict):
            nummer = int(row["Categorienummer"])
            naam = CategorieRepository.checkColumn(row, "Categorienaam")
            beschrijving = CategorieRepository.checkColumn(row, "Bijschrijving")
        return Categorie(nummer, naam, beschrijving)

    @staticmethod
    def checkColumn(row, columnName):
        result=""
        if (columnName in row.keys() and row[columnName] is not None): # controle op Null
            result = row[columnName]
        return result