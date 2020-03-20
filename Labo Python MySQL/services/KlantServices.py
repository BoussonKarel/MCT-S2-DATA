from repositories.KlantRepository import KlantRepository
from models.Klant import Klant
from tabulate import tabulate

class KlantServices:
    @staticmethod
    def print_all_klanten():
        table = []
        for klant in KlantRepository.read_all():
            table.append([klant.klantnummer, klant.naam, klant.gemeente, klant.klanttype, f"€ {klant.saldo:.2f}"])
        print(tabulate(table))

    @staticmethod
    def print_details_klant(klantnummer):
        if not klantnummer:
            return print(f"Ongeldig klantnummer: {klantnummer}")
        klant = KlantRepository.details(klantnummer)

        if klant is None:
            print(f"Klant {klantnummer} is niet gevonden.")
        else:
            table = []
            table.append([klant.klantnummer, klant.naam, klant.gemeente, klant.klanttype, f"€ {klant.saldo:.2f}"])
            print(tabulate(table))
        return klant