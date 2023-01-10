import hashlib
from Database.database import get_db
import config

class UserService():
  
    @staticmethod
    def verify(login, heslo):
        db = get_db()
        hashed_heslo = hashlib.sha256(f'{heslo}{config.heslo_SALT}'.encode())

        user = db.execute('''
            SELECT RegUzivatelia.email, RegUzivatelia.hashheslo, typ_role.id_role, 
            RegUzivatelia.meno, RegUzivatelia.priezvisko, RegUzivatelia.zakladne_id_zakladne, RegUzivatelia.profilovka
            FROM RegUzivatelia
            JOIN typ_role ON (typ_role_id_role = typ_role.id_role)
            JOIN zakladne ON (zakladne_id_zakladne = zakladne.id_zak)
            WHERE email = ? AND hashheslo = ? ''',[login, hashed_heslo.hexdigest()]).fetchone()
        if user:
            return user
        else:
            return None

    @staticmethod
    def register_user(meno,priezvisko,pohlavie,email,heslo, zakladne_id_zakladne):
        db = get_db()
        hashed_heslo = hashlib.sha256(f'{heslo}{config.heslo_SALT}'.encode())
        db.execute(
            'INSERT INTO RegUzivatelia (meno, priezvisko, pohlavie, zakladne_id_zakladne, status, email, hashheslo, typ_role_id_role) VALUES (? ,? ,? ,?, ?, ?, ?, ?)', [meno, priezvisko, pohlavie, zakladne_id_zakladne, 'status', email, hashed_heslo.hexdigest(), 3]
        )
        db.commit()
   
    
    @staticmethod
    def move_user(zakladne_id_zakladne, email, heslo):
        db = get_db()
        hashed_heslo = hashlib.sha256(f'{heslo}{config.heslo_SALT}'.encode())
        db.execute(
            'UPDATE RegUzivatelia SET zakladne_id_zakladne = ? WHERE email = ? AND hashheslo = ?', [zakladne_id_zakladne, email, hashed_heslo.hexdigest()]
            )
        db.commit()

    
    @staticmethod
    def name_user(email, heslo):
        db = get_db()
        hashed_heslo = hashlib.sha256(f'{heslo}{config.heslo_SALT}'.encode())
        db.execute(
            'UPDATE RegUzivatelia SET typ_role_id_role = 2 WHERE email = ? AND hashheslo = ?', [email, hashed_heslo.hexdigest()]
            )
        db.commit() 

        
    @staticmethod
    def ener_user(kolik, nazov):
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

    @staticmethod
    def email_control(email, zakladne_id_zakladne, priezvisko, pohlavie):
        db = get_db()
        user = db.execute(
            'SELECT RegUzivatelia.email, RegUzivatelia.zakladne_id_zakladne, RegUzivatelia.priezvisko, RegUzivatelia.pohlavie FROM RegUzivatelia WHERE email = ? OR (zakladne_id_zakladne = ? AND priezvisko = ? AND pohlavie = ?)', [email, zakladne_id_zakladne, priezvisko, pohlavie]).fetchone()
        return user
    
    @staticmethod
    def Change_Meno_Priezvisko(email, meno, priezvisko, heslo):
        db = get_db()
        hashed_heslo = hashlib.sha256(f'{heslo}{config.heslo_SALT}'.encode())
        logical = UserService.check_change_password(email,heslo) 
        if logical == True:  
            db.execute(
                'UPDATE RegUzivatelia SET meno = ? , priezvisko = ? WHERE email = ? and hashheslo = ?',[meno,priezvisko,email,hashed_heslo.hexdigest()]    
            )
            db.commit()
            user = db.execute(
                'SELECT meno, priezvisko FROM RegUzivatelia Where email = ? and hashheslo = ?',[email,hashed_heslo.hexdigest()]
            ).fetchone
            if user:
                return user
            else:
                return None
        else:
            return None

    @staticmethod
    def change_email( email,novyemail, heslo):
        db = get_db()
        hashed_heslo = hashlib.sha256(f'{heslo}{config.heslo_SALT}'.encode())
        logical = UserService.check_change_password(email,heslo) 
        if logical == True: 
            db.execute(
            'UPDATE RegUzivatelia SET email = ? WHERE email = ? and hashheslo = ?',[novyemail,email,hashed_heslo.hexdigest()]
            )
            db.commit()
            user = db.execute(
                'SELECT email FROM RegUzivatelia Where email = ? and hashheslo = ?',[novyemail,hashed_heslo.hexdigest()]
            ).fetchone
            if user:
                return user
            else:
                return None
        else:
            return False

    @staticmethod
    def change_heslo( email,noveheslo, heslo):
        db = get_db()
        hashed_heslo = hashlib.sha256(f'{heslo}{config.heslo_SALT}'.encode())
        hashed_noveheslo = hashlib.sha256(f'{noveheslo}{config.heslo_SALT}'.encode())
        logical = UserService.check_change_password(email,heslo) 
        if logical == True: 
            db.execute(
                'UPDATE RegUzivatelia SET heslo = ? , hashheslo = ? WHERE email = ? and hashheslo = ?',[noveheslo, hashed_heslo.hexdigest(),email,hashed_heslo.hexdigest()]
            )
            db.commit()
            return True            
        else:
            return False

    @staticmethod
    def check_change_password(email,heslo):
        db = get_db()
        hashed_heslo = hashlib.sha256(f'{heslo}{config.heslo_SALT}'.encode())   
        user = db.execute(
            'SELECT meno FROM RegUzivatelia WHERE email = ? and hashheslo = ?',[email,hashed_heslo.hexdigest()]
        ).fetchone()  
        if user:
            return True
        else: 
            return False
    
    @staticmethod
    def zmena_user(meno, priezvisko, pohlavie, email, heslo):
        db = get_db()
        hashed_heslo = hashlib.sha256(f'{heslo}{config.heslo_SALT}'.encode())
        db.execute(
            'UPDATE RegUzivatelia SET meno = ?, priezvisko = ?, pohlavie = ? WHERE email = ? AND hashheslo = ?', [meno, priezvisko, pohlavie, email, hashed_heslo.hexdigest()]
            )
        db.commit()