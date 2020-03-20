from repositories.CategorieRepository import CategorieRepository
from services.CategorieServices import CategorieServices

# CategorieServices.print_all_categories()
# CategorieServices.print_details_categorie(5)
# CategorieServices.print_details_categorie(912)
# CategorieServices.print_details_categorie()

choice = ""
while(choice.upper() != "X"):
    print("Kies een optie: R = Read, S = Search, X = Exit"
    + "\n-----------------------------------")
    choice = input("Jouw optie [R,S,X] = ")
    if choice.upper() == "R":
        CategorieServices.print_all_categories()
    elif choice.upper() == "S":
        categorienummer = int(input("Categorienummer: "))
        CategorieServices.print_details_categorie(categorienummer)