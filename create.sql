use Wiezienie;

CREATE TABLE Stanowiska (
    Nazwa VARCHAR(50) PRIMARY KEY,
    Opis TEXT NOT NULL DEFAULT 'OPIS'
);

CREATE TABLE Prace_wiezienne (
    Nazwa VARCHAR(50) PRIMARY KEY,
    Opis TEXT NOT NULL DEFAULT 'OPIS'
);

CREATE TABLE Przewinienia (
    Nazwa VARCHAR(50) PRIMARY KEY,
    Opis TEXT NOT NULL DEFAULT 'OPIS'
);

CREATE TABLE Bloki (
    ID CHAR PRIMARY KEY,
    Data_otwarcia DATE NOT NULL,
    Pojemnosc INT check(Pojemnosc > 0),
    Opis TEXT NOT NULL DEFAULT 'OPIS'
);

CREATE TABLE Cele (
    Numer INT IDENTITY(1,1) PRIMARY KEY,
    FK_Blok CHAR NOT NULL,
    Ilosc_lozek INT NOT NULL check(Ilosc_lozek > 0),
    FOREIGN KEY (FK_Blok) REFERENCES Bloki(ID) ON UPDATE CASCADE
);

CREATE TABLE Osoby (
	ID INT PRIMARY KEY Identity(1,1),
	Imie NVARCHAR(50) NOT NULL,
	Nazwisko NVARCHAR(50) NOT NULL,
	Pesel VARCHAR(11) NOT NULL UNIQUE,
	Data_urodzenia DATE NOT NULL,
	Plec NVARCHAR(10) NULL
);

CREATE TABLE Straznicy (
    ID INT PRIMARY KEY,
    Telefon VARCHAR(20) check(Telefon LIKE '+[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    Adres VARCHAR(100) NOT NULL,
    Data_zatrudnienia DATE NOT NULL,
    Stawka_godzinowa DECIMAL(10, 2) NOT NULL,
    FK_Blok CHAR NOT NULL,
    FK_ID_Naczelnika INT NULL,
    FK_Nazwa_Stanowiska VARCHAR(50)NOT NULL,
    FOREIGN KEY (ID) REFERENCES Osoby(ID) ON DELETE CASCADE,
    FOREIGN KEY (FK_ID_Naczelnika) REFERENCES Straznicy(ID) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (FK_Blok) REFERENCES Bloki(ID) ON UPDATE CASCADE,
    FOREIGN KEY (FK_Nazwa_Stanowiska) REFERENCES Stanowiska(Nazwa) ON UPDATE CASCADE
);

CREATE TABLE Dyzury (
    FK_ID_Straznika INT NOT NULL,
    Data_rozpoczêcia DATE NOT NULL,
    Data_zakonczenia DATE NOT NULL,
    PRIMARY KEY (FK_ID_Straznika, Data_zakonczenia),
    FOREIGN KEY (FK_ID_Straznika) REFERENCES Straznicy(ID) ON DELETE CASCADE,
);

CREATE TABLE Wiezniowie (
    ID INT PRIMARY KEY,
    Data_przyjecia DATE NOT NULL,
    Data_zakonczenia DATE,
    FK_Nazwa_Pracy VARCHAR(50) NULL,
    FK_Numer_Celi INT NOT NULL check(FK_Numer_Celi > 0),
    FOREIGN KEY (ID) REFERENCES Osoby(ID) ON DELETE CASCADE,
    FOREIGN KEY (FK_Nazwa_Pracy) REFERENCES Prace_wiezienne(Nazwa) ON UPDATE CASCADE,
    FOREIGN KEY (FK_Numer_Celi) REFERENCES Cele(Numer)
);

CREATE TABLE Odwiedziny (
    FK_ID_Osoby INT NOT NULL,
    FK_ID_Wieznia INT NOT NULL,
    FK_Data_zakonczenia DATE NOT NULL,
    Data_rozpoczecia DATE NOT NULL,
    PRIMARY KEY (FK_ID_Osoby, FK_ID_Wieznia, FK_Data_zakonczenia),
    FOREIGN KEY (FK_ID_Osoby) REFERENCES Osoby(ID),
    FOREIGN KEY (FK_ID_Wieznia) REFERENCES Wiezniowie(ID) ON DELETE CASCADE
);

CREATE TABLE Kary (
    Sygnatura_akt VARCHAR(50) PRIMARY KEY,
    Szczegó³y TEXT NOT NULL,
    FK_ID_Wieznia INT NOT NULL,
    FOREIGN KEY (FK_ID_Wieznia) REFERENCES Wiezniowie(ID) ON DELETE CASCADE
);

CREATE TABLE Kary_Przewinienia (
    FK_Sygnatura_akt VARCHAR(50) NOT NULL,
    FK_Nazwa_Przew VARCHAR(50) NOT NULL,
    PRIMARY KEY (FK_Sygnatura_akt, FK_Nazwa_Przew),
    FOREIGN KEY (FK_Sygnatura_akt) REFERENCES Kary(Sygnatura_akt) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (FK_Nazwa_Przew) REFERENCES Przewinienia(Nazwa) ON UPDATE CASCADE
);

CREATE TABLE Nagany (
    FK_ID_Wieznia INT NOT NULL,
    Data_otrzymania DATE NOT NULL,
    Tresc TEXT NOT NULL DEFAULT 'TRESC NAGANY',
    PRIMARY KEY (FK_ID_Wieznia, Data_otrzymania),
    FOREIGN KEY (FK_ID_Wieznia) REFERENCES Wiezniowie(ID) ON DELETE CASCADE
);

CREATE TABLE Przepustki (
    FK_ID_Wieznia INT NOT NULL,
    Data_rozpoczecia DATE NOT NULL,
    Data_zakonczenia DATE NOT NULL,
    PRIMARY KEY (FK_ID_Wieznia, Data_rozpoczecia, Data_zakonczenia),
    FOREIGN KEY (FK_ID_Wieznia) REFERENCES Wiezniowie(ID) ON DELETE CASCADE
);