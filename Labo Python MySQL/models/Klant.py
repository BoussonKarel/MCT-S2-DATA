# Klantnummer, Naam, Klanttype, Gemeente, Saldo.
class Klant:
    def __init__(self, par_klantnummer, par_naam, par_klanttype, par_gemeente, par_saldo):
        self._valueErrors = {}
        self.klantnummer = par_klantnummer
        self.naam = par_naam
        self.klanttype = par_klanttype
        self.gemeente = par_gemeente
        self.saldo = par_saldo

    @property
    def valueErrors(self):
        """The valueErrors property."""
        return self._valueErrors
        
    @property
    def IsValid(self):
        """The IsValid property."""
        return (len(self._valueErrors) == 0)

# PROPERTIES FROM tblKlant -------------------------------------------------------------
    @property
    def klantnummer(self):
        """The categorienummer property."""
        return self._klantnummer
    @klantnummer.setter
    def klantnummer(self, value):
        if type(value) is int:
            self._klantnummer = value
        else:
            self._valueErrors["klantnummer"] = ValueError("Geen geldig nummer")

    @property
    def naam(self):
        """The naam property."""
        return self._naam
    @naam.setter
    def naam(self, value):
        if (type(value) is str):
            if (len(value) <= 50):
                self._naam = value
            else:
                self._valueErrors["naam"] = ValueError("Maximaal 50 karakters")
        else:
            self._valueErrors["naam"] = ValueError("Geen geldige naam")

    @property
    def klanttype(self):
        """The klanttype property."""
        return self._klanttype
    @klanttype.setter
    def klanttype(self, value):
        if (type(value) is str):
            if (len(value) <= 1):
                self._klanttype = value
            else:
                self._valueErrors["klanttype"] = ValueError("Maximaal 1 karakter")
        else:
            self._valueErrors["klanttype"] = ValueError("Geen geldig type")
    
    @property
    def gemeente(self):
        """The gemeente property."""
        return self._gemeente
    @gemeente.setter
    def gemeente(self, value):
        if (type(value) is str):
            if (len(value) <= 50):
                self._gemeente = value
            else:
                self._valueErrors["gemeente"] = ValueError("Maximaal 50 karakters")
        else:
            self._valueErrors["gemeente"] = ValueError("Geen geldige gemeente")

    @property
    def saldo(self):
        """The saldo property."""
        return self._saldo
    @saldo.setter
    def saldo(self, value):
        if type(value) is float:
            self._saldo = value
        else:
            self._valueErrors["saldo"] = ValueError("Geen geldig saldo")
        

# METHODS -------------------------------------------------------------
    def __str__(self):
        return f"({self._klantnummer}) {self._naam}"

    def __repr__(self):
        return self.__str__()
        