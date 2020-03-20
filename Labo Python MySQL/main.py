# from repositories.CategorieRepository import CategorieRepository
# from repositories.KlantRepository import KlantRepository
from services.CategorieServices import CategorieServices
from services.KlantServices import KlantServices

# CategorieServices.print_all_categories()
# CategorieServices.print_details_categorie(5)
# CategorieServices.print_details_categorie(912)
# CategorieServices.print_details_categorie()

# print(KlantRepository.read_all())
# print(KlantRepository.details(5))

# KlantServices.print_all_klanten()
# KlantServices.print_details_klant(5)

def main():
    print("Kies een optie:"
    + "\n- RC = Read Categories"
    + "\n- SC = Search Categories"
    + "\n- RK = Read Klanten"
    + "\n- SK = Search Klanten"
    + "\n- X = Exit")
    choice = ""

    while(choice.upper() != "X"):
        print("-----------------------------------")
        choice = input("Jouw optie [RC, SC] of [RK, SK] of [X] = ")
        if choice.upper() == "RC":
            CategorieServices.print_all_categories()
        elif choice.upper() == "SC":
            categorienummer = int(input("Categorienummer: "))
            CategorieServices.print_details_categorie(categorienummer)
        elif choice.upper() == "RK":
            KlantServices.print_all_klanten()
        elif choice.upper() == "SK":
            klantnummer = int(input("Klantnummer: "))
            KlantServices.print_details_klant(klantnummer)

main()