from Database.database import get_db

class BaseService():

    @staticmethod
    def add_base(nazov,stavej,suradnica_x,suradnica_y,medzi_galakticke_kredity):
        db = get_db()
        db.execute(
            'INSERT INTO zakladne (nazov, stavej, suradnica_x, suradnica_y, medzi_galakticke_kredity) VALUES (? ,? ,? ,?, ?)', [nazov, stavej,suradnica_x,suradnica_y,medzi_galakticke_kredity]
        )
        db.commit()