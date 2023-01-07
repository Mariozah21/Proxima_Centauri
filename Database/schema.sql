DROP TABLE IF EXISTS RegUzivatelia;
DROP TABLE IF EXISTS typ_role;
DROP TABLE IF EXISTS zakladne;

CREATE TABLE RegUzivatelia (
    id_uzivatela         INTEGER PRIMARY KEY AUTOINCREMENT,
    meno                 TEXT NOT NULL,
    priezvisko           TEXT NOT NULL,
    pohlavie             TEXT NOT NULL,
    zakladne_id_zakladne INTEGER NOT NULL,
    status               TEXT NOT NULL,
    email                TEXT NOT NULL,
    heslo               TEXT NOT NULL,
    typ_role_id_role     INTEGER NOT NULL,
    FOREIGN KEY (zakladne_id_zakladne) REFERENCES zakladne (id_zak),
    FOREIGN KEY (typ_role_id_role) REFERENCES typ_role (id_role)
);

CREATE TABLE typ_role (
    id_role  INTEGER PRIMARY KEY NOT NULL,
    typ_role TEXT NOT NULL
);

CREATE TABLE zakladne (
    id_zak                INTEGER PRIMARY KEY AUTOINCREMENT,
    nazov                    TEXT NOT NULL,
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

INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (1, 'Silvia', 'Melichova', 'zena', 1 ,'status', 'xsmelichova@proxima.universe' , 'utlimatnyvladca123*', 1); 
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (2, 'Lucia', 'Holbova', 'zena', 7 ,'status', 'xlholbova@proxima.universe', 'somvladca789*', 2);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (3, 'Krystof', 'Busek', 'muz', 6, 'status' ,'xkbusek@proxima.universe', 'somvladca456*', 2);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (4, 'Mario', 'Zahorjan', 'muz', 8 ,'status', 'xzahorjan@proxima.universe', 'SuperMari021*', 2); 
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (5, 'Adam', 'Bukaj' ,'muz', 5 ,'status' ,'xabukaj@proxima.universe', 'xabukaj5', 2);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (6, 'Kvetoslav', 'Buciek', 'muz', 6, 'status', 'xkbuciek@proxima.universe', 'xkbuciek6', 3);
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

INSERT INTO typ_role (id_role, typ_role) VALUES (1 ,'ultimatnyvladca');
INSERT INTO typ_role (id_role, typ_role) VALUES (2, 'vladcazakladne');
INSERT INTO typ_role (id_role, typ_role) VALUES (3, 'kolonista');

--inserting bases

INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (1 ,'Merkur01' ,15000 ,49.12 ,16.37 ,200000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (2 ,'Venusa02' ,20000 ,50.05 ,14.25 ,350000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (3 ,'Zem03' ,10000 ,48.53 ,18.02 ,200000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (4 ,'Mars04' ,30000 ,39.54 ,116.23 ,500000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (5 ,'Jupiter05' ,25000 ,35.41 ,139.41 ,400000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (6 ,'Saturn06' ,20000, 51.30 ,00.07 ,250000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (7 ,'Uran07' ,35000 ,33.51 ,151.12 ,400000);
INSERT INTO zakladne (id_zak, nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (8 ,'Neptun08', 35000 ,38.51 ,200.12 ,400000);