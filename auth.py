from flask import session
from flask import redirect
from flask import url_for
from flask import flash
from functools import wraps

def login_required(func):
    @wraps(func)
    def decorated_function(*args, **kwargs):
        print(session)
        if "authenticated" not in session:
            flash("You must be logged in")
            return redirect(url_for("index"))
        return func(*args, **kwargs)
    return decorated_function
