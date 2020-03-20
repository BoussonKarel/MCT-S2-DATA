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