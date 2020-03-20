from repositories.CategorieRepository import CategorieRepository
from models.Categorie import Categorie
from tabulate import tabulate

def print_all_categories():
    table = []
    for cat in CategorieRepository.read_all():
        table.append([cat.categorienummer, cat.categorienaam, cat.beschrijving])
    print(tabulate(table))