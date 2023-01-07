import hashlib
from Database.database import get_db
import config

class UserService():
  
    @staticmethod
    def verify(login, heslo):
        db = get_db()
        hashed_heslo = hashlib.sha256(f'{heslo}{config.heslo_SALT}'.encode())
        
        user = db.execute('''
            SELECT RegUzivatelia.id_uzivatela, RegUzivatelia.email ,typ_role.typ_role 
            FROM RegUzivatelia
            JOIN typ_role ON (typ_role_id_role = typ_role.id_role)
            WHERE email = ? AND heslo = ? ''',[login, hashed_heslo.hexdigest()]).fetchone()
        if user:
            return user
        else:
            return None

    @staticmethod
    def register_user(meno,priezvisko,pohlavie,email,heslo):
        db = get_db()
        db.execute(
            'INSERT INTO RegUzivatelia (meno, priezvisko, pohlavie, email, heslo) VALUES (? ,? ,?, ?, ?)', [meno, priezvisko, pohlavie, email, heslo]
        )
        db.commit()