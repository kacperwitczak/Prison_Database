use Wiezienie;

/*S�d chce sprawdzi�, czy jaki� wi�zie� mo�e zosta� wypuszczony przed czasem za
dobre sprawowanie. Znajd� 3 wi�ni�w, kt�rzy odbyli ju� ponad po�ow� kary, o
najmniejszej ilo�ci nagan.*/
SELECT TOP 3
    W.ID AS Wiezien_ID,
    O.Imie,
    O.Nazwisko,
    W.Data_przyjecia,
    W.Data_zakonczenia,
    COUNT(N.FK_ID_Wieznia) AS Ilosc_Nagan
FROM
    Wiezniowie W
    LEFT JOIN Nagany N ON W.ID = N.FK_ID_Wieznia
	LEFT JOIN Osoby O ON W.ID = O.ID
WHERE
    DATEDIFF(MONTH, W.Data_przyjecia, GETDATE()) >= (0.5 * DATEDIFF(MONTH, W.Data_przyjecia, W.Data_zakonczenia))
GROUP BY
    W.ID, O.Imie, O.Nazwisko, W.Data_przyjecia, W.Data_zakonczenia
ORDER BY
    Ilosc_Nagan ASC;

/* Wi�zienie chce awansowa� stra�nika, kt�ry ma styczno�� z najniebezpieczniejszymi
wi�niami. Znajd� takiego, dla kt�rego �rednia d�ugo�� odsiadki wi�nia w bloku, w
kt�rym pracuje, jest najwi�ksza. W przypadku remisu rozstrzyga d�ugo�� sta�u. */ 

DROP VIEW IF EXISTS Blok_SredniaDlugoscOdsiadki;
GO

CREATE VIEW Blok_SredniaDlugoscOdsiadki AS
SELECT
	B.ID AS BLOK_ID,
	AVG(DATEDIFF(DAY, W.Data_przyjecia, W.Data_zakonczenia)) AS SredniaDlugoscOdsiadki
FROM 
	Wiezniowie W
	LEFT JOIN Cele C ON W.FK_Numer_Celi = C.Numer
	LEFT JOIN Bloki B ON B.ID = C.FK_Blok
GROUP BY 
	B.ID;
GO

SELECT
    S.ID AS Straznik_ID,
    O.Imie,
    O.Nazwisko,
    DATEDIFF(DAY, S.Data_zatrudnienia, GETDATE()) AS Staz,
    SD.BLOK_ID,
    SD.SredniaDlugoscOdsiadki
FROM
    Straznicy S
    JOIN Osoby O ON S.ID = O.ID
    LEFT JOIN Blok_SredniaDlugoscOdsiadki SD ON S.FK_Blok = SD.BLOK_ID
ORDER BY
    SD.SredniaDlugoscOdsiadki DESC, Staz DESC;

/*Wi�zienie planuje zwi�kszenie ilo�ci stra�nik�w w blokach, w kt�rych najwi�cej
wi�ni�w dostaje nagany. Posortuj (malej�co) bloki wed�ug tego kryterium. */

SELECT
    B.ID AS Blok_ID,
    COUNT(N.FK_ID_Wieznia) AS IloscNagan
FROM
    Bloki B
    LEFT JOIN Cele C ON B.ID = C.FK_Blok
    LEFT JOIN Wiezniowie W ON C.Numer = W.FK_Numer_Celi
    LEFT JOIN Nagany N ON W.ID = N.FK_ID_Wieznia
GROUP BY
    B.ID
ORDER BY
    IloscNagan DESC;

/*Wi�zie� skar�y si� na zachowanie klawisza na jego bloku danego dnia. Nie wie jak ta osoba
si� nazywa. Nale�y znale�� pracownik�w, kt�rzy danego dnia pracowali na danym bloku */


DECLARE @DATA_ZDARZENIA DATE;
SET @DATA_ZDARZENIA = '2023-05-21';

SELECT 
    O.Imie,
    O.Nazwisko,
    S.ID AS Straznik_ID,
    D.Data_rozpocz�cia AS Data_rozpoczecia_dy�uru,
    D.Data_zakonczenia AS Data_zakonczenia_dy�uru,
    S.FK_BLOK AS BLOK
FROM
    Straznicy S
    INNER JOIN Osoby O ON O.ID = S.ID
    INNER JOIN Dyzury D ON D.FK_ID_Straznika = S.ID
WHERE 
    D.Data_rozpocz�cia < @DATA_ZDARZENIA AND D.Data_zakonczenia > @DATA_ZDARZENIA
GROUP BY
    O.Imie,
    O.Nazwisko,
    S.ID,
    D.Data_rozpocz�cia,
    D.Data_zakonczenia,
    S.FK_BLOK
ORDER BY
    D.Data_rozpocz�cia;

/*Wi�zie� ubiega si� o przedterminowe zwolnienie z odbywania kary. Aby ten wniosek m�g�
by� rozpatrzony wi�zie� nie mo�e otrzyma� w ci�gu ostatnich 3 lat wi�cej ni� 2 nagan,*/

SELECT 
	W.ID,
	O.Imie,
	O.Nazwisko,
	COUNT(N.FK_ID_Wieznia) AS ILOSC_NAGAN
FROM
	Nagany N
	LEFT JOIN Wiezniowie W ON W.ID = N.FK_ID_Wieznia
	LEFT JOIN OSOBY O ON O.ID = W.ID
WHERE 
	N.Data_otrzymania > DATEADD(YEAR,-3,GETDATE())
GROUP BY
	W.ID, O.Imie, O.Nazwisko
HAVING
	COUNT(N.FK_ID_Wieznia) < 3;

/*Na koniec roku, nale�y wykona� statystyk� z wykonawstwa kary. W statystyce nale�y
uwzgl�dni� ile wi�ni�w b�dzie odbywa�o kar� do�ywocia, kar� 25-lat pozbawienia wolno�ci,
a tak�e zakresy kar 0-1 rok, 2-5lat, 6-10 lat, 11-15 lat. */

SELECT
    RodzajKary,
    COALESCE(COUNT(*), 0) AS IloscWiezniow
FROM
    (
        SELECT
            CASE
                WHEN Data_zakonczenia IS NULL THEN 'Do�ywocie'
                WHEN DATEDIFF(YEAR, Data_przyjecia, Data_zakonczenia) > 25 THEN '25 lat lub wiecej pozbawienia wolno�ci'
                WHEN DATEDIFF(YEAR, Data_przyjecia, Data_zakonczenia) BETWEEN 16 AND 24 THEN '16-24 lat'
                WHEN DATEDIFF(YEAR, Data_przyjecia, Data_zakonczenia) BETWEEN 11 AND 15 THEN '11-15 lat'
                WHEN DATEDIFF(YEAR, Data_przyjecia, Data_zakonczenia) BETWEEN 6 AND 10 THEN '6-10 lat'
                WHEN DATEDIFF(YEAR, Data_przyjecia, Data_zakonczenia) BETWEEN 2 AND 5 THEN '2-5 lat'
                WHEN DATEDIFF(YEAR, Data_przyjecia, Data_zakonczenia) BETWEEN 0 AND 1 THEN '0-1 rok'
            END AS RodzajKary
        FROM
            Wiezniowie
    ) AS Kary
GROUP BY
    RodzajKary;



/* Okaza�o si�, �e w bloku 'X' pojawi�y si� narkotyki. Chcesz znale�� 5 najnowszych os�b, 
kt�re odwiedza�y wi�ni�w w tym bloku*/
SELECT TOP 5
    O.Imie AS Osoba_Imie,
    O.Nazwisko AS Osoba_Nazwisko,
    WO.Imie AS Wiezien_Imie,
    WO.Nazwisko AS Wiezien_Nazwisko,
    Odwiedziny.Data_rozpoczecia
FROM
    Odwiedziny
    JOIN Osoby O ON Odwiedziny.FK_ID_Osoby = O.ID
    JOIN Wiezniowie W ON Odwiedziny.FK_ID_Wieznia = W.ID
    JOIN Cele C ON W.FK_Numer_Celi = C.Numer
    JOIN Bloki B ON C.FK_Blok = B.ID
	JOIN Osoby WO ON WO.ID = W.ID
WHERE
    B.ID = 'A'
ORDER BY
    Odwiedziny.Data_rozpoczecia DESC;

/* Twoje wi�zienie nie radzi sobie z niebezpiecznymi wi�zniami.
Naczelnik podj�� decyzj� o przeniesieniu najbardziej niebezpiecznych 
wi�ni�w do wi�zienia o zaostrzonym rygorze.
 Znajd� osoby, kt�re otrzyma�y najwi�cej nagan w ci�gu ostatnich 12 miesi�cy. */

 SELECT TOP 3
    O.Imie,
    O.Nazwisko,
    COUNT(N.FK_ID_Wieznia) AS Ilosc_Nagan
FROM
    Osoby O
    LEFT JOIN Wiezniowie W ON O.ID = W.ID
    LEFT JOIN Nagany N ON W.ID = N.FK_ID_Wieznia
WHERE
    N.Data_otrzymania >= DATEADD(MONTH, -12, GETDATE())
GROUP BY
    O.Imie, O.Nazwisko
ORDER BY
    COUNT(N.FK_ID_Wieznia) DESC;

/* W twoim kraju zosta�y zlegalizowane narkotyki. 
Prezydent u�askawi� wszystkich, kt�rzy zostali skazani
za posiadanie narkotyk�w. Znajd� wszystkich wi�ni�w, kt�rzy
zostali za to skazani. */

DROP VIEW IF EXISTS Widok_PosiadanieNarkotykow;
GO
CREATE VIEW Widok_PosiadanieNarkotykow AS
SELECT
    W.ID AS Wiezien_ID,
    O.Imie,
    O.Nazwisko,
	O.Pesel,
    KP.FK_Nazwa_Przew AS PRZEWINIENIE,
    K.Sygnatura_akt,
	K.Szczeg�y,
	P.Opis
FROM
    Wiezniowie W
    JOIN Osoby O ON W.ID = O.ID
    JOIN Kary K ON K.FK_ID_Wieznia = W.ID
    JOIN Kary_Przewinienia KP ON K.Sygnatura_akt = KP.FK_Sygnatura_akt
	JOIN Przewinienia P ON P.Nazwa = KP.FK_Nazwa_Przew
WHERE
    KP.FK_Nazwa_Przew = 'Posiadanie narkotyk�w';
GO

SELECT 
	Widok_PosiadanieNarkotykow.Wiezien_ID,
	Widok_PosiadanieNarkotykow.Imie,
	Widok_PosiadanieNarkotykow.Pesel,
	Widok_PosiadanieNarkotykow.PRZEWINIENIE,
	COUNT(Widok_PosiadanieNarkotykow.Sygnatura_akt) AS IloscPrzewinien
FROM 
	Widok_PosiadanieNarkotykow
GROUP BY 
	Widok_PosiadanieNarkotykow.Wiezien_ID,
	Widok_PosiadanieNarkotykow.Imie,
	Widok_PosiadanieNarkotykow.Pesel,
	Widok_PosiadanieNarkotykow.PRZEWINIENIE
ORDER BY 
	IloscPrzewinien DESC, Widok_PosiadanieNarkotykow.Pesel ASC;

/*Wi�zienie chce przydzieli� premi� dla pracownik�w.
Znajd� stra�nik�w, kt�rzy mieli najwi�cej dy�ur�w w bloku, w kt�rym jest najwi�cej wi�ni�w */
SELECT
    O.Imie AS Straznik_Imie,
    O.Nazwisko AS Straznik_Nazwisko,
    B.ID AS Blok_ID,
    COUNT(D.FK_ID_Straznika) AS IloscDyzurow
FROM
    Straznicy S
    JOIN Osoby O ON S.ID = O.ID
    JOIN Dyzury D ON S.ID = D.FK_ID_Straznika
    JOIN Bloki B ON S.FK_Blok = B.ID
WHERE
    B.ID = (
        SELECT TOP 1
            B.ID
        FROM
            Bloki B
            JOIN Cele C ON B.ID = C.FK_Blok
            JOIN Wiezniowie W ON C.Numer = W.FK_Numer_Celi
        GROUP BY
            B.ID
        ORDER BY
            COUNT(W.ID) DESC
    )
GROUP BY
    O.Imie, O.Nazwisko, B.ID
ORDER BY
    IloscDyzurow DESC;
