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