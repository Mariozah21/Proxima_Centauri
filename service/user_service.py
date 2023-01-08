import hashlib
from Database.database import get_db
import config

class UserService():
  
    @staticmethod
    def verify(login, heslo):
        db = get_db()
        hashed_heslo = hashlib.sha256(f'{heslo}{config.heslo_SALT}'.encode())

        user = db.execute('''
            SELECT RegUzivatelia.email, RegUzivatelia.heslo, typ_role.id_role, 
            RegUzivatelia.meno, RegUzivatelia.priezvisko, RegUzivatelia.zakladne_id_zakladne
            FROM RegUzivatelia
            JOIN typ_role ON (typ_role_id_role = typ_role.id_role)
            JOIN zakladne ON (zakladne_id_zakladne = zakladne.id_zak)
            WHERE email = ? AND heslo = ? ''',[login, heslo]).fetchone()
        if user:
            return user
        else:
            return None

    @staticmethod
    def register_user(meno,priezvisko,pohlavie,email,heslo, zakladne_id_zakladne):
        db = get_db()
        db.execute(
            'INSERT INTO RegUzivatelia (meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, heslo, typ_role_id_role) VALUES (? ,? ,? ,?, ?, ?, ?, ?)', [meno, priezvisko, pohlavie, zakladne_id_zakladne, 'status', email, heslo, 3]
        )
        db.commit()
   
    
    @staticmethod
    def move_user(zakladne_id_zakladne, email, heslo):
        db = get_db()
        db.execute(
            'UPDATE RegUzivatelia SET zakladne_id_zakladne = ? WHERE email = ? AND heslo = ?', [zakladne_id_zakladne, email, heslo]
            )
        db.commit()

    
    @staticmethod
    def name_user(email, heslo):
        db = get_db()
        db.execute(
            'UPDATE RegUzivatelia SET typ_role_id_role = 2 WHERE email = ? AND heslo = ?', [email, heslo]
            )
        db.commit() 

        
    @staticmethod
    def name_user(kolik, nazov):
        db = get_db()
        db.execute(
            'UPDATE zakladne SET stavej = ? WHERE nazov = ?', [kolik, nazov]
            )
        db.commit() 


    @staticmethod
    def get_users_mybase():
        db = get_db()
        sql = 'SELECT meno, priezvisko, pohlavie, email , zakladne_id_zakladne FROM RegUzivatelia'
        return db.execute( sql ).fetchall()
