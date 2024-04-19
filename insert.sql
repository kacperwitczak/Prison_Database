use Wiezienie;

INSERT INTO Stanowiska (Nazwa, Opis)
VALUES 
('Naczelnik', 'Zarz¹dzanie wiêzieniem'),
('Straznik', 'Nadzór nad wiêŸniami'),
('Kucharz', 'Przygotowywanie posi³ków'),
('Sprzatacz', 'Sprzatanie wiezienia'),
('Administrator', 'Obs³uga systemów informatycznych'),
('Psycholog', 'Wsparcie psychologiczne dla wiêŸniów'),
('Trener', 'Organizacja zajêæ edukacyjnych dla wiêŸniów'),
('Socjolog', 'Badanie spo³ecznoœci wiêziennej'),
('Opiekun medyczny', 'Opieka zdrowotna dla wiêŸniów'),
('In¿ynier budowlany', 'Nadzór nad pracami remontowymi w wiêzieniu'),
('Pracownik socjalny', 'Wsparcie spo³eczne dla wiêŸniów i ich rodzin');

INSERT INTO Prace_wiezienne (Nazwa, Opis)
VALUES 
('Ogrodnik', 'Prace ogrodnicze: sadzenie, pielêgnacja roœlin'),
('Warsztat stolarski', 'Wykonywanie mebli i innych wyrobów z drewna'),
('Pranie', 'Pranie i czyszczenie odzie¿y wiêŸniów i poœcieli'),
('Kuchenny pomocnik', 'Pomoc w kuchni: przygotowywanie posi³ków, sprz¹tanie'),
('Bibliotekarz', 'Prowadzenie biblioteki wiêziennej, organizacja ksiêgozbioru'),
('Malarz', 'Malowanie i remonty wewn¹trz wiêzienia'),
('Szlifierz', 'Prace przy obróbce metalu i œlusarstwo'),
('Nauczyciel', 'Udzielanie pomocy w zajêciach edukacyjnych dla innych wiêŸniów'),
('Asystent administracyjny', 'Pomoc przy biurowych zadaniach administracyjnych'),
('Serwisant sprzêtu', 'Naprawa i konserwacja sprzêtu wiêziennego'),
('Pielêgniarz', 'Pomoc w opiece zdrowotnej dla innych wiêŸniów'),
('Fotograf', 'Wykonywanie zdjêæ dokumentacyjnych'),
('Instruktor fitnessu', 'Prowadzenie zajêæ fitnessu i sportu'),
('Kosmetyczka', 'Pielêgnacja i fryzjerstwo dla innych wiêŸniów'),
('Terapeuta', 'Prowadzenie zajêæ terapeutycznych i wsparcie psychologiczne');

INSERT INTO Przewinienia (Nazwa, Opis)
VALUES 
('Kradzie¿', 'Próba lub dokonanie kradzie¿y mienia'),
('Napaœæ', 'Atak fizyczny na innego wiêŸnia lub personel'),
('Posiadanie narkotyków', 'Posiadanie nielegalnych substancji'),
('Zniewa¿enie funkcjonariusza', 'Obraza lub zniewa¿enie funkcjonariusza'),
('Naruszenie porz¹dku', 'Zachowanie zak³ócaj¹ce porz¹dek w wiêzieniu'),
('Ucieczka', 'Próba ucieczki lub ucieczka z wiêzienia'),
('Posiadanie broni', 'Posiadanie nielegalnej broni'),
('Naruszenie warunków pobytu', 'Niew³aœciwe zachowanie zgodnie z warunkami pobytu'),
('Handel narkotykami', 'Handel lub dystrybucja nielegalnych substancji'),
('K³ótnia', 'Konflikt lub bójka z innym wiêŸniem'),
('Sabota¿', 'Uszkodzenie mienia wiêziennego'),
('Niepos³uszeñstwo', 'Niezastosowanie siê do poleceñ personelu'),
('U¿ywanie przemocy', 'U¿ycie si³y fizycznej wobec innych wiêŸniów'),
('Naruszenie zakazu komunikacji', 'Nielegalne kontakty z zewn¹trz wiêzienia'),
('Naruszenie regulaminu', 'Nieprzestrzeganie ustalonych regu³ wiêzienia');

INSERT INTO Bloki (ID, Data_otwarcia, Pojemnosc, Opis)
VALUES 
('A', '2023-01-01', 60, 'Opis bloku A1'),
('B', '2023-02-15', 50, 'Opis bloku B2'),
('C', '2023-03-12', 40, 'Opis bloku C3'),
('D', '2023-04-20', 30, 'Opis bloku D4'),
('E', '2023-05-18', 70, 'Opis bloku E5'),
('F', '2023-06-10', 50, 'Opis bloku F6'),
('G', '2023-07-05', 60, 'Opis bloku G7'),
('H', '2023-08-22', 40, 'Opis bloku H8'),
('I', '2023-09-14', 30, 'Opis bloku I9'),
('J', '2023-10-30', 55, 'Opis bloku J10'),
('K', '2023-11-12', 50, 'Opis bloku K11'),
('L', '2023-12-05', 60, 'Opis bloku L12'),
('M', '2024-01-20', 35, 'Opis bloku M13'),
('N', '2024-02-14', 30, 'Opis bloku N14'),
('O', '2024-03-08', 70, 'Opis bloku O15'),
('P', '2024-04-02', 45, 'Opis bloku P16'),
('Q', '2024-05-19', 55, 'Opis bloku Q17'),
('R', '2024-06-11', 40, 'Opis bloku R18'),
('S', '2024-07-07', 25, 'Opis bloku S19'),
('T', '2024-08-23', 55, 'Opis bloku T20');


INSERT INTO Cele (FK_Blok, Ilosc_lozek)
VALUES
    ('A', 1), ('A', 2), ('A', 3), ('A', 4), ('A', 5),
    ('B', 1), ('B', 2), ('B', 3), ('B', 4), ('B', 5),
    ('C', 1), ('C', 2), ('C', 3), ('C', 4), ('C', 5),
    ('D', 1), ('D', 2), ('D', 3), ('D', 4), ('D', 5),
    ('E', 1), ('E', 2), ('E', 3), ('E', 4), ('E', 5),
    ('F', 1), ('F', 2), ('F', 3), ('F', 4), ('F', 5),
    ('G', 1), ('G', 2), ('G', 3), ('G', 4), ('G', 5),
    ('H', 1), ('H', 2), ('H', 3), ('H', 4), ('H', 5),
    ('I', 6), ('I', 7), ('I', 8), ('I', 9), ('I', 10),    
    ('J', 6), ('J', 7), ('J', 8), ('J', 9), ('J', 10),
    ('K', 1), ('K', 2), ('K', 3), ('K', 4), ('K', 5),
    ('L', 1), ('L', 2), ('L', 3), ('L', 4), ('L', 5),
    ('M', 1), ('M', 2), ('M', 3), ('M', 4), ('M', 5),
    ('N', 1), ('N', 2), ('N', 3), ('N', 4), ('N', 5),
    ('O', 1), ('O', 2), ('O', 3), ('O', 4), ('O', 5),
    ('P', 1), ('P', 2), ('P', 3), ('P', 4), ('P', 5),
    ('Q', 1), ('Q', 2), ('Q', 3), ('Q', 4), ('Q', 5),
    ('R', 1), ('R', 2), ('R', 3), ('R', 4), ('R', 5),
    ('S', 6), ('S', 7), ('S', 8), ('S', 9), ('S', 10),    
    ('T', 6), ('T', 7), ('T', 8), ('T', 9), ('T', 10);


INSERT INTO Osoby (Imie, Nazwisko, Pesel, Data_urodzenia, Plec) VALUES 
	('Jan', 'Kowalski', '12345678901', '1990-05-15', 'Mê¿czyzna'),
	('Anna', 'Nowak', '23456789012', '1985-09-20', 'Kobieta'),
	('Piotr', 'Wiœniewski', '34567890123', '2000-12-10', 'Mê¿czyzna'),
	('Aleksandra', 'D¹browska', '45678901234', '1998-03-25', 'Kobieta'),
	('Marek', 'Lewandowski', '56789012345', '1976-07-08', 'Mê¿czyzna'),
	('Karolina', 'Wójcik', '67890123456', '1995-11-30', 'Kobieta'),
	('Tomasz', 'Kamiñski', '78901234567', '1982-01-05', 'Mê¿czyzna'),
	('Magdalena', 'Kowalczyk', '89012345678', '1993-04-18', 'Kobieta'),
	('Krzysztof', 'Zieliñski', '90123456789', '1988-08-22', 'Mê¿czyzna'),
	('Natalia', 'Szymañska', '01234567890', '2001-06-27', 'Kobieta'),
	('Marcin', 'WoŸniak', '11223344556', '1991-10-12', 'Mê¿czyzna'),
	('Weronika', 'Jankowska', '22446688001', '1980-02-14', 'Kobieta'),
	('£ukasz', 'Wilk', '33557799012', '1997-12-28', 'Mê¿czyzna'),
	('Monika', 'Kaczmarek', '44668800223', '1987-09-03', 'Kobieta'),
	('Andrzej', 'Mazur', '55779901334', '1979-11-01', 'Mê¿czyzna'),
	('Katarzyna', 'Wojciechowska', '66880022445', '1994-05-09', 'Kobieta'),
	('Micha³', 'Adamczyk', '77990133556', '1984-03-17', 'Mê¿czyzna'),
	('Patrycja', 'Grabowska', '88002244667', '1999-07-23', 'Kobieta'),
	('Jakub', 'Nowakowski', '99013355778', '1986-08-06', 'Mê¿czyzna'),
	('Martyna', 'Piotrowska', '00133455689', '2002-01-31', 'Kobieta'),
	('Adam', 'Zaj¹c', '11334556890', '1992-04-03', 'Mê¿czyzna'),
	('Ewa', 'Kwiatkowska', '22445567801', '1981-06-19', 'Kobieta'),
	('Robert', 'Sawicki', '33556678012', '1996-09-14', 'Mê¿czyzna'),
	('Dominika', 'Majewska', '44667789023', '1989-12-26', 'Kobieta'),
	('Rafa³', 'Olszewski', '55778890134', '2000-02-08', 'Mê¿czyzna'),
	('Justyna', 'Nowicka', '66889012345', '1998-05-22', 'Kobieta'),
	('Artur', 'Jab³oñski', '77900123456', '1983-07-07', 'Mê¿czyzna'),
	('Agata', 'Witkowska', '89012334567', '1990-11-29', 'Kobieta'),
	('£ucja', 'Kowal', '90123345678', '1977-04-11', 'Kobieta'),
	('Kacper','Witczak','12344678901','2003-06-02','UNDF'),
	('Dominik', 'Nowak', '23456789023', '1991-08-17', 'Mê¿czyzna'),
	('Paulina', 'Kowalczyk', '34567890134', '1986-02-28', 'Kobieta'),
	('Sebastian', 'Lis', '45678901245', '2000-04-15', 'Mê¿czyzna'),
	('Natalia', 'Wójcik', '56789012356', '1998-12-20', 'Kobieta'),
	('Damian', 'Kamiñski', '67890123467', '1975-06-10', 'Mê¿czyzna'),
	('Wiktoria', 'Zawadzka', '78901234578', '1994-10-25', 'Kobieta'),
	('Dawid', 'Sikora', '89012345689', '1982-03-03', 'Mê¿czyzna'),
	('Julia', 'Górka', '90123456790', '2001-07-18', 'Kobieta'),
	('Szymon', 'Kaczmarek', '01234567891', '1989-09-05', 'Mê¿czyzna'),
	('Klaudia', 'Pawlak', '12456789012', '1992-11-30', 'Kobieta'),
	('Tadeusz', 'Lewicki', '23567890123', '1987-01-14', 'Mê¿czyzna'),
	('Oliwia', 'Zieliñska', '34678901234', '1996-05-09', 'Kobieta'),
	('Igor', 'Kowalski', '45789012345', '1980-08-22', 'Mê¿czyzna'),
	('Marcelina', 'Witkowska', '56901234567', '2002-12-27', 'Kobieta'),
	('Gabriel', 'Mazurek', '69012345678', '1988-04-01', 'Mê¿czyzna'),
	('Sandra', 'Jaworska', '70123456789', '1997-10-12', 'Kobieta'),
	('Arkadiusz', 'Duda', '12345678900', '1993-02-03', 'Mê¿czyzna'),
	('Maja', 'Miko³ajczyk', '23456789011', '1984-06-19', 'Kobieta'),
	('Kamil', 'Piotrowski', '34567890122', '1995-09-24', 'Mê¿czyzna'),
	('Patrycja', 'Sobczyk', '45678901233', '1978-11-07', 'Kobieta'),
	('Bartosz', 'Kowalik', '56789012344', '1990-01-29', 'Mê¿czyzna'),
	('Alicja', 'Michalak', '67890123455', '2003-03-04', 'Kobieta'),
	('Miko³aj', 'Wrona', '78901234566', '1983-05-21', 'Mê¿czyzna'),
	('Nadia', 'Dêbska', '89012345677', '1999-08-14', 'Kobieta'),
	('Mateusz', 'Ostrowski', '90123456788', '1981-12-28', 'Mê¿czyzna'),
	('Dominika', 'Sadowska', '01234567899', '1996-04-17', 'Kobieta'),
	('Grzegorz', 'Zaj¹c', '12345678910', '1977-07-30', 'Mê¿czyzna'),
	('Nikola', 'Lisowska', '23456789021', '1990-10-03', 'Kobieta'),
	('Kacper', 'Kaczmarczyk', '34567890132', '2000-01-26', 'Mê¿czyzna'),
	('Wiktoria', 'Szewczyk', '45678901243', '1985-03-09', 'Kobieta');


INSERT INTO Straznicy (ID, Telefon, Adres, Data_zatrudnienia, Stawka_godzinowa, FK_Blok, FK_ID_Naczelnika, FK_Nazwa_Stanowiska) VALUES 
	(1, '+48123456789', 'ul. Kwiatowa 1, Warszawa', '2020-01-01', 25.50, 'A', NULL, 'Naczelnik'),
	(2, '+48234567890', 'ul. Ogrodowa 5, Krakow', '2019-05-15', 22.75, 'B', 1, 'Straznik'),
	(3, '+48345678901', 'ul. Szkolna 3, Gdansk', '2021-03-10', 28.00, 'C', 1, 'Straznik'),
	(4, '+48456789012', 'ul. Lipowa 7, Wroclaw', '2020-11-20', 26.80, 'D', 1, 'Straznik'),
	(5, '+48567890123', 'ul. Polna 10, Poznan', '2018-09-08', 24.60, 'A', 1, 'Straznik'),
	(6, '+48678901234', 'ul. Miodowa 2, Szczecin', '2017-07-04', 23.00, 'B', 1, 'Sprzatacz'),
	(7, '+48789012345', 'ul. Jesienna 4, Lublin', '2019-12-25', 27.30, 'C', 1, 'Straznik'),
	(8, '+48890123456', 'ul. Wiosenna 6, Katowice', '2020-08-18', 29.20, 'D', 1, 'Straznik'),
	(9, '+48901234567', 'ul. Jesiotrowa 8, Lodz', '2022-02-28', 30.00, 'A', 1, 'Straznik'),
	(10, '+48911122334', 'ul. Brzozowa 9, Gdynia', '2021-06-14', 26.00, 'B', 1, 'Straznik'),
	(11, '+48123456780', 'ul. Leœna 11, Warszawa', '2023-01-05', 28.50, 'C', 1, 'Straznik'),
	(12, '+48234567801', 'ul. Rzeczna 12, Krakow', '2022-11-15', 26.25, 'D', 1, 'Straznik'),
	(13, '+48345678012', 'ul. Górska 13, Gdansk', '2023-03-20', 29.80, 'A', 1, 'Straznik'),
	(14, '+48456789023', 'ul. Morska 14, Wroclaw', '2021-09-10', 27.40, 'B', 1, 'Straznik'),
	(15, '+48567890134', 'ul. Poludniowa 15, Poznan', '2020-07-28', 25.60, 'C', 1, 'Straznik'),
	(16, '+48678901245', 'ul. Zachodnia 16, Szczecin', '2019-05-14', 24.30, 'D', 1, 'Straznik'),
	(17, '+48789012356', 'ul. Pólnocna 17, Lublin', '2020-12-25', 26.70, 'A', 1, 'Straznik'),
	(18, '+48890123467', 'ul. Wschodnia 18, Katowice', '2022-03-28', 31.00, 'B', 1, 'Straznik'),
	(19, '+48901234578', 'ul. Po³udniowo-Zachodnia 19, Lodz', '2023-08-14', 29.50, 'C', 1, 'Straznik'),
	(20, '+48911122339', 'ul. Pó³nocno-Zachodnia 20, Gdynia', '2022-06-09', 27.80, 'D', 1, 'Straznik');

INSERT INTO Dyzury (FK_ID_Straznika, Data_rozpoczêcia, Data_zakonczenia) VALUES
    (1, '2023-02-15', '2023-02-18'),
    (2, '2023-03-05', '2023-03-08'),
    (3, '2023-04-10', '2023-04-14'),
    (4, '2023-05-20', '2023-05-23'),
    (5, '2023-06-08', '2023-06-12'),
    (6, '2023-07-11', '2023-07-15'),
    (7, '2023-08-25', '2023-08-28'),
    (8, '2023-09-04', '2023-09-07'),
    (9, '2023-10-19', '2023-10-22'),
    (10, '2023-11-28', '2023-12-01'),
    (1, '2023-01-10', '2023-01-13'),
    (2, '2023-02-20', '2023-02-23'),
    (3, '2023-03-08', '2023-03-11'),
    (4, '2023-04-15', '2023-04-18'),
    (5, '2023-05-07', '2023-05-10'),
    (6, '2023-06-12', '2023-06-15'),
    (7, '2023-07-20', '2023-07-23'),
    (8, '2023-08-09', '2023-08-12'),
    (9, '2023-09-25', '2023-09-28'),
    (10, '2023-10-30', '2023-11-02'),
    (1, '2023-01-25', '2023-01-28'),
    (2, '2023-02-07', '2023-02-10'),
    (3, '2023-03-18', '2023-03-21'),
    (4, '2023-04-28', '2023-05-01'),
    (5, '2023-05-15', '2023-05-18'),
    (6, '2023-06-25', '2023-06-28'),
    (7, '2023-07-05', '2023-07-08'),
    (8, '2023-08-14', '2023-08-17'),
    (9, '2023-09-20', '2023-09-23'),
    (10, '2023-10-05', '2023-10-08'),
	(11, '2023-02-10', '2023-02-13'),
    (12, '2023-03-20', '2023-03-23'),
    (13, '2023-04-05', '2023-04-08'),
    (14, '2023-05-15', '2023-05-18'),
    (15, '2023-06-25', '2023-06-28'),
    (16, '2023-07-05', '2023-07-08'),
    (17, '2023-08-15', '2023-08-18'),
    (18, '2023-09-25', '2023-09-28'),
    (19, '2023-10-05', '2023-10-08'),
    (20, '2023-11-15', '2023-11-18'),
    (11, '2023-01-05', '2023-01-08'),
    (12, '2023-02-15', '2023-02-18'),
    (13, '2023-03-25', '2023-03-28'),
    (14, '2023-04-05', '2023-04-08'),
    (15, '2023-05-15', '2023-05-18'),
    (16, '2023-06-25', '2023-06-28'),
    (17, '2023-07-05', '2023-07-08'),
    (18, '2023-08-15', '2023-08-18'),
    (19, '2023-09-25', '2023-09-28'),
    (20, '2023-10-05', '2023-10-08'),
    (11, '2023-01-15', '2023-01-18'),
    (12, '2023-02-25', '2023-02-28'),
    (13, '2023-03-05', '2023-03-08'),
    (14, '2023-04-15', '2023-04-18'),
    (15, '2023-05-25', '2023-05-28'),
    (16, '2023-06-05', '2023-06-08'),
    (17, '2023-07-15', '2023-07-18'),
    (18, '2023-08-25', '2023-08-28'),
    (19, '2023-09-05', '2023-09-08'),
    (20, '2023-10-15', '2023-10-18');

INSERT INTO Wiezniowie (ID, Data_przyjecia, Data_zakonczenia, FK_Numer_Celi, FK_Nazwa_Pracy)
VALUES
    (21, '2000-01-05', '2029-02-15', 1, 'Ogrodnik'),
    (22, '1999-02-10', '2029-03-20', 2, 'Warsztat stolarski'),
    (23, '1989-03-15', '2029-04-25', 3, 'Pranie'),
    (24, '2005-04-20', '2029-05-30', 4, 'Kuchenny pomocnik'),
    (25, '2023-05-25', '2040-06-05', 5, 'Bibliotekarz'),
    (26, '2023-06-30', '2040-08-10', 6, 'Malarz'),
    (27, '2023-07-05', '2040-08-15', 7, 'Szlifierz'),
    (28, '2023-08-20', '2040-09-30', 8, 'Nauczyciel'),
    (29, '2023-09-25', '2040-11-05', 9, 'Asystent administracyjny'),
    (30, '2023-10-30', '2040-12-10', 10, 'Serwisant sprzêtu'),
    (31, '2023-01-01', '2024-01-01', 11, 'Ogrodnik'),
    (32, '2023-02-05', '2057-03-15', 12, 'Warsztat stolarski'),
    (33, '2023-03-10', '2057-04-20', 13, 'Pranie'),
    (34, '2023-04-15', '2057-05-25', 14, 'Kuchenny pomocnik'),
    (35, '2023-05-20', '2057-06-30', 15, 'Bibliotekarz'),
    (36, '2023-06-25', '2057-08-05', 16, 'Malarz'),
    (37, '2023-07-30', '2080-09-09', 17, 'Szlifierz'),
    (38, '2023-08-25', '2080-10-05', 18, 'Nauczyciel'),
    (39, '2023-09-20', '2080-10-30', 19, 'Asystent administracyjny'),
    (40, '2023-10-15', NULL,20, 'Serwisant sprzêtu');

INSERT INTO Odwiedziny (FK_ID_Osoby, FK_ID_Wieznia, FK_Data_zakonczenia, Data_rozpoczecia)
VALUES
    (41, 21, '2023-02-20', '2023-02-15'),
    (42, 22, '2023-03-25', '2023-03-20'),
    (43, 23, '2023-04-30', '2023-04-25'),
    (44, 24, '2023-05-15', '2023-05-10'),
    (45, 25, '2023-06-10', '2023-06-05'),
    (46, 26, '2023-07-15', '2023-07-10'),
    (47, 27, '2023-08-20', '2023-08-15'),
    (48, 28, '2023-09-25', '2023-09-20'),
    (49, 29, '2023-10-30', '2023-10-25'),
    (50, 30, '2023-11-05', '2023-11-01'),
    (51, 31, '2023-01-11', '2023-01-05'),
    (52, 32, '2023-02-20', '2023-02-15'),
    (53, 33, '2023-03-30', '2023-03-25'),
    (54, 34, '2023-05-05', '2023-05-01'),
    (55, 35, '2023-06-15', '2023-06-10'),
    (56, 36, '2023-07-20', '2023-07-15'),
    (57, 37, '2023-08-25', '2023-08-20'),
    (58, 38, '2023-10-01', '2023-09-25'),
    (59, 39, '2023-11-05', '2023-10-30'),
    (60, 40, '2023-12-10', '2023-12-05');

INSERT INTO Kary (Sygnatura_akt, Szczegó³y, FK_ID_Wieznia) VALUES
	('SYG001', 'Kara dla wiêŸnia o ID 21', 21),
	('SYG002', 'Kara dla wiêŸnia o ID 22', 22),
	('SYG003', 'Kara dla wiêŸnia o ID 23', 23),
	('SYG004', 'Kara dla wiêŸnia o ID 24', 24),
	('SYG005', 'Kara dla wiêŸnia o ID 25', 25),
	('SYG006', 'Kara dla wiêŸnia o ID 26', 26),
	('SYG007', 'Kara dla wiêŸnia o ID 27', 27),
	('SYG008', 'Kara dla wiêŸnia o ID 28', 28),
	('SYG009', 'Kara dla wiêŸnia o ID 29', 29),
	('SYG010', 'Kara dla wiêŸnia o ID 30', 30),
	('SYG011', 'Kara dla wiêŸnia o ID 31', 31),
	('SYG012', 'Kara dla wiêŸnia o ID 32', 32),
	('SYG013', 'Kara dla wiêŸnia o ID 33', 33),
	('SYG014', 'Kara dla wiêŸnia o ID 34', 34),
	('SYG015', 'Kara dla wiêŸnia o ID 35', 35),
	('SYG016', 'Kara dla wiêŸnia o ID 36', 36),
	('SYG017', 'Kara dla wiêŸnia o ID 37', 37),
	('SYG018', 'Kara dla wiêŸnia o ID 38', 38),
	('SYG019', 'Kara dla wiêŸnia o ID 39', 39),
	('SYG020', 'Kara dla wiêŸnia o ID 40', 40);

INSERT INTO Kary_Przewinienia (FK_Sygnatura_akt, FK_Nazwa_Przew) VALUES
	('SYG001', 'Kradzie¿'),
	('SYG001', 'Naruszenie porz¹dku'),
	('SYG002', 'Napaœæ'),
	('SYG003', 'Posiadanie narkotyków'),
	('SYG004', 'Zniewa¿enie funkcjonariusza'),
	('SYG005', 'Ucieczka'),
	('SYG006', 'Posiadanie broni'),
	('SYG007', 'Naruszenie warunków pobytu'),
	('SYG008', 'Handel narkotykami'),
	('SYG009', 'K³ótnia'),
	('SYG010', 'Sabota¿'),
	('SYG011', 'Niepos³uszeñstwo'),
	('SYG012', 'U¿ywanie przemocy'),
	('SYG013', 'Naruszenie zakazu komunikacji'),
	('SYG014', 'Naruszenie regulaminu'),
	('SYG015', 'Kradzie¿'),
	('SYG016', 'Napaœæ'),
	('SYG017', 'Posiadanie narkotyków'),
	('SYG018', 'Zniewa¿enie funkcjonariusza'),
	('SYG019', 'Posiadanie narkotyków'),
	('SYG020', 'Posiadanie broni');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(21, '2023-01-01', 'Niepos³uszeñstwo'),
(21, '2023-04-20', 'K³ótnia');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(22, '2023-03-10', 'Naruszenie warunków pobytu'),
(22, '2023-05-05', 'U¿ywanie przemocy'),
(22, '2023-06-18', 'Naruszenie zakazu komunikacji');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(23, '2023-02-22', 'Kradzie¿'),
(23, '2023-04-07', 'Posiadanie narkotyków'),
(23, '2023-07-11', 'Napaœæ');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(24, '2023-03-05', 'Naruszenie regulaminu'),
(24, '2023-04-18', 'Niepos³uszeñstwo'),
(24, '2023-06-25', 'K³ótnia');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(25, '2023-02-10', 'U¿ywanie przemocy'),
(25, '2023-05-02', 'Naruszenie warunków pobytu'),
(25, '2023-07-15', 'Kradzie¿');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(26, '2023-01-22', 'Napaœæ'),
(26, '2023-04-05', 'Posiadanie narkotyków'),
(26, '2023-06-10', 'Naruszenie regulaminu');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(27, '2023-03-12', 'Kradzie¿'),
(27, '2023-05-28', 'Naruszenie regulaminu'),
(27, '2023-07-09', 'Niepos³uszeñstwo');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(28, '2023-02-18', 'U¿ywanie przemocy'),
(28, '2023-04-30', 'Naruszenie warunków pobytu'),
(28, '2023-06-15', 'Napaœæ');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(29, '2023-01-25', 'Posiadanie narkotyków'),
(29, '2023-04-03', 'K³ótnia'),
(29, '2023-07-20', 'Naruszenie zakazu komunikacji');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(30, '2023-03-08', 'Naruszenie regulaminu'),
(30, '2023-05-14', 'Niepos³uszeñstwo'),
(30, '2023-06-28', 'Kradzie¿');
INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(30, '2023-03-15', 'Naruszenie regulaminu'),
(30, '2023-05-15', 'Niepos³uszeñstwo'),
(30, '2023-06-15', 'Kradzie¿');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(31, '2023-02-20', 'K³ótnia'),
(31, '2023-04-10', 'U¿ywanie przemocy'),
(31, '2023-07-05', 'Naruszenie warunków pobytu');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(32, '2023-01-12', 'Napaœæ'),
(32, '2023-05-01', 'Posiadanie narkotyków'),
(32, '2023-06-20', 'Naruszenie regulaminu');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(33, '2023-03-18', 'Kradzie¿'),
(33, '2023-04-27', 'Niepos³uszeñstwo'),
(33, '2023-07-12', 'Naruszenie regulaminu');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(34, '2023-02-28', 'U¿ywanie przemocy'),
(34, '2023-05-05', 'K³ótnia'),
(34, '2023-06-30', 'Naruszenie warunków pobytu');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(35, '2023-01-15', 'Napaœæ'),
(35, '2023-04-02', 'Posiadanie narkotyków'),
(35, '2023-07-18', 'Naruszenie regulaminu');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(36, '2023-03-05', 'Kradzie¿'),
(36, '2023-05-10', 'Niepos³uszeñstwo'),
(36, '2023-06-25', 'K³ótnia');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(37, '2023-02-17', 'U¿ywanie przemocy'),
(37, '2023-04-20', 'Naruszenie warunków pobytu'),
(37, '2023-07-01', 'Napaœæ');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(38, '2023-01-20', 'Posiadanie narkotyków'),
(38, '2023-04-05', 'K³ótnia'),
(38, '2023-06-22', 'Naruszenie zakazu komunikacji');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(39, '2023-03-10', 'Naruszenie regulaminu'),
(39, '2023-05-15', 'Niepos³uszeñstwo'),
(39, '2023-06-29', 'Kradzie¿');

INSERT INTO Nagany (FK_ID_Wieznia, Data_otrzymania, Tresc) VALUES
(40, '2023-02-25', 'K³ótnia'),
(40, '2023-04-15', 'U¿ywanie przemocy'),
(40, '2023-07-05', 'Naruszenie warunków pobytu');

INSERT INTO Przepustki (FK_ID_Wieznia, Data_rozpoczecia, Data_zakonczenia) VALUES
	(21, '2023-01-01', '2023-01-03'),
	(21, '2023-02-15', '2023-02-17'),
	(21, '2023-04-20', '2023-04-22'),
	(23, '2023-06-10', '2023-06-12'),
	(23, '2023-08-05', '2023-08-07'),
	(23, '2023-09-20', '2023-09-22'),
	(25, '2023-11-11', '2023-11-13'),
	(25, '2023-12-25', '2023-12-27'),
	(25, '2024-02-02', '2024-02-04'),
	(27, '2024-03-20', '2024-03-22'),
	(27, '2024-05-05', '2024-05-07'),
	(27, '2024-06-18', '2024-06-20'),
	(29, '2024-08-10', '2024-08-12'),
	(29, '2024-09-25', '2024-09-27'),
	(29, '2024-11-15', '2024-11-17'),
	(31, '2024-12-30', '2025-01-01'),
	(31, '2025-02-05', '2025-02-07'),
	(31, '2025-03-22', '2025-03-24'),
	(33, '2025-05-08', '2025-05-10'),
	(33, '2025-06-22', '2025-06-24'),
	(33, '2025-08-05', '2025-08-07'),
	(35, '2025-09-20', '2025-09-22'),
	(35, '2025-11-11', '2025-11-13'),
	(35, '2025-12-25', '2025-12-27'),
	(37, '2026-02-02', '2026-02-04'),
	(37, '2026-03-20', '2026-03-22'),
	(37, '2026-05-05', '2026-05-07'),
	(39, '2026-06-18', '2026-06-20'),
	(39, '2026-08-10', '2026-08-12'),
	(39, '2026-09-25', '2026-09-27');





