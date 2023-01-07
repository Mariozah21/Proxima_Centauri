
CREATE TABLE "Reg.Uzivatelia" (
    id_uzivatela         INTEGER AUTOINCREMENT,
    meno                 VARCHAR2(50 CHAR) NOT NULL,
    priezvisko           VARCHAR2(100 CHAR) NOT NULL,
    pohlavie             VARCHAR2(5 CHAR) NOT NULL,
    zakladne_id_zakladne INTEGER NOT NULL,
    status               VARCHAR2(100 CHAR) NOT NULL,
    email                VARCHAR2(100 CHAR) NOT NULL,
    heslo                VARCHAR2(100 CHAR) NOT NULL,
    typ_role_id_role     INTEGER NOT NULL
);

ALTER TABLE "Reg.Uzivatelia"
    ADD CONSTRAINT registrovani_uzivatelia_pk PRIMARY KEY ( id_uzivatela,
                                                            zakladne_id_zakladne,
                                                            typ_role_id_role );

CREATE TABLE typ_role (
    id_role  INTEGER NOT NULL,
    typ_role VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE typ_role ADD CONSTRAINT typ_uzivatela_pk PRIMARY KEY ( id_role );

CREATE TABLE zakladne (
    "id_zak."                INTEGER AUTOINCREMENT,
    nazov                    VARCHAR2(200 CHAR) NOT NULL,
    stavej                   INTEGER NOT NULL,
    suradnica_x              FLOAT NOT NULL,
    suradnica_y              FLOAT NOT NULL,
    medzi_galakticke_kredity INTEGER NOT NULL
);

ALTER TABLE zakladne ADD CONSTRAINT zakladne_pk PRIMARY KEY ( "id_zak." );

ALTER TABLE "Reg.Uzivatelia"
    ADD CONSTRAINT "Reg.Uzivatelia_Typ_role_FK" FOREIGN KEY ( typ_role_id_role )
        REFERENCES typ_role ( id_role );

ALTER TABLE "Reg.Uzivatelia"
    ADD CONSTRAINT "Reg.Uzivatelia_Zakladne_FK" FOREIGN KEY ( zakladne_id_zakladne )
        REFERENCES zakladne ( "id_zak." );

-- Inserti initial data


INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (1, "Silvia", "Melichova", "zena", 1 ,"status", "xsmelichova@proxima.universe" , "utlimatnyvladca123*", 1) 
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
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
INSERT INTO Reg.Uzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES ( 
