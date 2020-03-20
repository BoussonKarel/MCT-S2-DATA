from repositories.CategorieRepository import CategorieRepository
from models.Categorie import Categorie
from tabulate import tabulate

class CategorieServices:
    @staticmethod
    def print_all_categories():
        table = []
        for cat in CategorieRepository.read_all():
            table.append([cat.categorienummer, cat.categorienaam, cat.beschrijving])
        print(tabulate(table))

    @staticmethod
    def print_details_categorie(categorienummer):
        if not categorienummer:
            return print(f"Ongeldig categorienummer: {categorienummer}")
        result = CategorieRepository.details(categorienummer)

        if result is None:
            print(f"Categorie {categorienummer} is niet gevonden.")
        else:
            table = []
            table.append([result.categorienummer, result.categorienaam, result.beschrijving])
            print(tabulate(table))
        return result