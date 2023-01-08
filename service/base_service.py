from Database.database import get_db

class BaseService():

    @staticmethod
    def add_base(nazov,stavej,suradnica_x,suradnica_y,medzi_galakticke_kredity):
        db = get_db()
        db.execute(
            'INSERT INTO zakladne (nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (? ,? ,? ,?, ?)', [nazov, stavej,suradnica_x,suradnica_y,medzi_galakticke_kredity]
        )
        db.commit()
    
    @staticmethod
    def base_control(nazov, suradnica_x, suradnica_y):
        db = get_db()
        base = db.execute(
            'SELECT zakladne.nazov, zakladne.suradnica_x, zakladne.suradnica_y  FROM zakladne WHERE nazov = ? OR (suradnica_x = ? AND suradnica_y = ?)', [nazov, suradnica_x, suradnica_y]).fetchone()
        return base