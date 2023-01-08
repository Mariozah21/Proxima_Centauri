DROP TABLE IF EXISTS RegUzivatelia;
DROP TABLE IF EXISTS typ_role;
DROP TABLE IF EXISTS zakladne;

CREATE TABLE RegUzivatelia (
    id_uzivatela         INTEGER PRIMARY KEY AUTOINCREMENT,
    meno                 TEXT NOT NULL,
    priezvisko           TEXT NOT NULL,
    pohlavie             TEXT NOT NULL,
    zakladne_id_zakladne INTEGER NOT NULL,
    status               TEXT ,
    email                TEXT NOT NULL,
    heslo                TEXT NOT NULL,
    typ_role_id_role     INTEGER NOT NULL,
    profilovka           TEXT ,
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
-- Inserti initial data

--inserting registered users

INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (1, 'Silvia', 'Melichova', 'zena', 1 ,'status', 'xsmelichova@proxima.universe' , 'utlimatnyvladca123*', 1); 
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (2, 'Lucia', 'Holbova', 'zena', 7 ,'status', 'xlholbova@proxima.universe', 'somvladca789*', 2);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (3, 'Krystof', 'Busek', 'muz', 6, 'status' ,'xkbusek@proxima.universe', 'somvladca456*', 2);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (4, 'Mario', 'Zahorjan', 'muz', 8 ,'status', 'xzahorjan@proxima.universe', 'SuperMari021*', 2); 
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (5, 'Adam', 'Bukaj' ,'muz', 5 ,'status' ,'xabukaj@proxima.universe', 'xabukaj5', 2);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (6, 'Kvetoslav', 'Buciek', 'muz', 6, 'status', 'xkbuciek@proxima.universe', 'xkbuciek6', 3);

INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (7, 'Libor', 'Jahn', 'muz', 7, 'status', 'xljahn@proxima.universe', 'xljahn7', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (8, 'Blahoslav', 'Chatran', 'muz', 8, 'status' , 'xbchatran@proxima.universe', 'xbchatran8', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (9, 'Milos', 'Jelinek', 'muz', 1, 'status', 'xmjelinek@proxima.universe', 'xjelinek9', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (10, 'Cyril', 'Kuchtak', 'muz', 2, 'status', 'xckuchtak@proxima.universe', 'xckuchtak10', 2);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (11, 'Jana', 'Dodekova', 'zena', 3, 'status', 'xjdodekova@proxima.universe', 'xjdodekova11', 2);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (12, 'Maria', 'Efanova', 'zena', 4, 'status', 'xmefanova@proxima.universe', 'xmefanova12', 2);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (13, 'Emma', 'Michalikova', 'zena', 5, 'status', 'emichalikova@proxima.universe', 'emichalikova13', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (14, 'Miriam', 'Hatalova', 'zena', 6, 'status', 'mhatalova@proxima.universe', 'mhatalova14', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (15, 'Eliška', 'Menhertova', 'zena', 7, 'status', 'emenhertova@proxima.universe', 'emenhertova15', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (16, 'Anna', 'Hrabovska', 'zena', 8, 'status', 'ahrabovska@proxima.universe', 'ahrabovska16', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (17, 'Tereza', 'Bruchterova', 'zena', 1, 'status', 'tbruchterova@proxima.universe', 'tbruchterova17', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (18, 'Sofia', 'Vankova', 'zena', 2, 'status', 'svankova@proxima.universe', 'svankova18', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (19, 'Viktoria', 'Urova', 'zena', 3, 'status', 'vuhrova@proxima.universe', 'vuhrova19', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (20, 'Karolina', 'Jurigova', 'zena', 4, 'status', 'kjurigova@proxima.universe', 'kjurigova20', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (21, 'Velvette', 'Osla', 'ine', 5, 'status', 'vosla@proxima.universe', 'vosla21', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (22, 'Charmayanne', 'Panda', 'ine', 6, 'status', 'cpanda@proxima.universe', 'cpanda22', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (23, 'Starlette', 'Snowdrop', 'ine', 7, 'status', 'ssnowdrop@proxima.universe', 'ssnowdrop23', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (24, 'Windy', 'Wiens', 'ine', 8, 'status', 'wwiens@proxima.universe', 'wwiens24', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (25, 'Oliana', 'Patra', 'ine', 1, 'status', 'opatra@proxima.universe', 'opatra25', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (26, 'Jana', 'Backova', 'zena', 2, 'status', 'jbackova@proxima.universe', 'jbackova26', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (27, 'Robert', 'Backo', 'muz', 2, 'status', 'rbacko@proxima.universe', 'rbacko27', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (28, 'Olivia', 'Backova', 'zena', 3, 'status', 'obackova@proxima.universe', 'obackova28', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (29, 'Sony', 'Backo', 'muz', 4, 'status', 'sbacko@proxima.universe', 'sbacko29', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (30, 'Enna', 'Hrabovska', 'zena', 5, 'status', 'ehrabovska@proxima.universe', 'ehrabovska30', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (31, 'Nina', 'Hrabovska', 'zena', 6, 'status', 'nhrabovska@proxima.universe', 'nhrabovska31', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (32, 'Yugo', 'Hrabovsky', 'muz', 5, 'status', 'yhrabovsky@proxima.universe', 'yhrabovsky32', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (33, 'Ren', 'Hrabovsky', 'muz', 7, 'status', 'rhrabovsky@proxima.universe', 'rhrabovsky33', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (34, 'Selen', 'Hrabovska', 'zena', 1, 'status', 'shrabovska@proxima.universe', 'shrabovska34', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (35, 'Fulgur', 'Ovid', 'muz', 7, 'status', 'fovid@proxima.universe', 'fovid35', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (36, 'Uki', 'Ovid', 'ine', 7, 'status', 'uovid@proxima.universe', 'uovid36', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (37, 'Lucia', 'Ovid', 'zena', 7, 'status', 'lovid@proxima.universe', 'lovid37', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (38, 'Ovidia', 'Ovid', 'zena', 8, 'status','oovid@proxima.universe', 'oovid38', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (39, 'Millie', 'Aluet', 'zena', 1, 'status', 'maluet@proxima.universe', 'maluet39', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (40, 'Reimu', 'Aluet', 'zena', 2, 'status', 'raluet@proxima.universe', 'raluet40', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (41, 'Kyo', 'Aluet', 'muz', 1, 'status', 'kaluet@proxima.universe', 'kaluet41', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (42, 'Dominik', 'Adamek', 'muz', 1, 'status', 'dadamek@proxima.universe', 'dadamek42', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (43, 'Lukas', 'Alacik', 'muz', 2, 'status', 'lalacik@proxima.universe', 'lalacik43', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (44, 'Jakub', 'Astapenko', 'muz', 3, 'status', 'jastapenko@proxima.universe', 'jastapenko44', 3);
INSERT INTO RegUzivatelia (id_uzivatela, meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (45, 'Ondrej', 'Blaha', 'muz', 4, 'status', 'oblaha@proxima.universe', 'oblaha45', 3);


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