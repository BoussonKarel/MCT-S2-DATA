class Categorie:
    def __init__(self, par_categorienummer, par_categorienaam, par_beschrijving):
        self._valueErrors = {}
        self.categorienummer = par_categorienummer
        self.categorienaam = par_categorienaam
        self.beschrijving = par_beschrijving

    @property
    def valueErrors(self):
        """The valueErrors property."""
        return self._valueErrors
        
    @property
    def IsValid(self):
        """The IsValid property."""
        return (len(self._valueErrors) == 0)

    @property
    def categorienummer(self):
        """The categorienummer property."""
        return self._categorienummer
    @categorienummer.setter
    def categorienummer(self, value):
        if type(value) is int:
            self._categorienummer = value
        else:
            self._valueErrors["categorienummer"] = ValueError("Geen geldig nummer")
            #raise ValueError("Geen geldig nummer")

    @property
    def categorienaam(self):
        """The categorienaam property."""
        return self._categorienaam
    @categorienaam.setter
    def categorienaam(self, value):
        if (type(value) is str):
            if (0 < len(value) <= 20):
                self._categorienaam = value
            else:
                self._valueErrors["categorienaam"] = ValueError("Niet leeg en maximaal 20 karakters")
        else:
            self._valueErrors["categorienaam"] = ValueError("Geen geldige naam")

    @property
    def beschrijving(self):
        """The beschrijving property."""
        return self._beschrijving
    @beschrijving.setter
    def beschrijving(self, value):
        if type(value) is str:
            if (len(value) <= 50):
                self._beschrijving = value
            else:
                self._valueErrors["beschrijving"] = ValueError("Maximaal 50 karakters")
        else:
            self._valueErrors["beschrijving"] = ValueError("Geen geldige beschrijving")

    def __str__(self):
        return f"({self._categorienummer}) {self._categorienaam}. {self._beschrijving}"

    def __repr__(self):
        return f"({self._categorienummer}) {self._categorienaam}"
        