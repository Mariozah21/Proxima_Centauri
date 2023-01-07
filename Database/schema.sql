
CREATE TABLE "RegUzivatelia" (
    id_uzivatela         INTEGER PRIMARY KEY AUTOINCREMENT,
    meno                 VARCHAR2(50 CHAR) NOT NULL,
    priezvisko           VARCHAR2(100 CHAR) NOT NULL,
    pohlavie             VARCHAR2(5 CHAR) NOT NULL,
    zakladne_id_zakladne INTEGER PRIMARY KEY NOT NULL,
    status               VARCHAR2(100 CHAR) NOT NULL,
    email                VARCHAR2(100 CHAR) NOT NULL,
    heslo                VARCHAR2(100 CHAR) NOT NULL,
    typ_role_id_role     INTEGER PRIMARY KEY NOT NULL
);

CREATE TABLE typ_role (
    id_role  INTEGER PRIMARY KEY NOT NULL,
    typ_role VARCHAR2(50 CHAR) NOT NULL
);

CREATE TABLE zakladne (
    "id_zak."                INTEGER PRIMARY KEY AUTOINCREMENT,
    nazov                    VARCHAR2(200 CHAR) NOT NULL,
    stavej                   INTEGER NOT NULL,
    suradnica_x              FLOAT NOT NULL,
    suradnica_y              FLOAT NOT NULL,
    medzi_galakticke_kredity INTEGER NOT NULL
);
/*
ALTER TABLE "RegUzivatelia"
    ADD CONSTRAINT "RegUzivatelia_Typ_role_FK" FOREIGN KEY ( typ_role_id_role )
        REFERENCES typ_role ( id_role );

ALTER TABLE "RegUzivatelia"
    ADD CONSTRAINT "RegUzivatelia_Zakladne_FK" FOREIGN KEY ( zakladne_id_zakladne )
        REFERENCES zakladne ( "id_zak." );

*/
-- Inserti initial data

--inserting registered users

INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (1, "Silvia", "Melichova", "zena", 1 ,"status", "xsmelichova@proxima.universe" , "utlimatnyvladca123*", 1); 
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (2, "Lucia", "Holbova", "zena", 7 ,"status", "xlholbova@proxima.universe", "somvladca789*", 2);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (3, "Krystof", "Busek", "muz", 6, "status" ,"xkbusek@proxima.universe", "somvladca456*", 2);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (4, "Mario", "Zahorjan", "muz", 8 ,"status", "xzahorjan@proxima.universe", "SuperMari021*", 2); 
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (5, "Adam", "Bukaj" ,"muz", 5 ,"status" ,"xabukaj@proxima.universe", "xabukaj5", 2);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (6, "Kvetoslav", "Buciek", "muz", 6, "status", "xkbuciek@proxima.universe", "xkbuciek6", 3);
--Este bude treba pridat ostatnych uzivatelov, dorobim ja -Mario
/*
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
*/

--Inserting types of users

INSERT INTO typ_role (id_role, typ_role) VALUES (1 ,"ultimatnyvladca");
INSERT INTO typ_role (id_role, typ_role) VALUES (2, "vladcazakladne");
INSERT INTO typ_role (id_role, typ_role) VALUES (3, "kolonista");

--inserting bases

INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (1 ,"Merkur01" ,15000 ,49.12.00 ,16.37.00 ,200000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (2 ,"Venusa02" ,20000 ,50.05.14 ,14.25.16 ,350000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (3 ,"Zem03" ,10000 ,48.53.39 ,18.02.26 ,200000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (4 ,"Mars04" ,30000 ,39.54.50 ,116.23.30 ,500000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (5 ,"Jupiter05" ,25000 ,35.41.00 ,139.41.00 ,400000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (6 ,"Saturn06" ,20000, 51.30.26 ,00.07.39 ,250000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (7 ,"Uran07" ,35000 ,33.51.36 ,151.12.40 ,400000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (8 ,"Neptun08", 35000 ,38.51.36 ,200.12.40 ,400000);