from flask import Flask, render_template
from Database import database

app = Flask(__name__)
app.config['DEBUG'] = True
database.init_app(app)



@app.route("/")
def index():
    return render_template("index.jinja")


@app.route("/login")
def view_login_page():
    return render_template("login.jinja")

@app.route("/register")
def view_register_page():
    return render_template("register.jinja")


@app.route("/account")
def view_account_page():
    return render_template("account.jinja")


@app.route("/myprofile")
def view_myprofile_page():
    return render_template("myprofile.jinja")


@app.route("/basemap")
def view_basemap_page():
    return render_template("basemap.jinja")


@app.route("/mybase")
def view_mybase_page():
    return render_template("mybase.jinja")


@app.route("/aboutus")
def view_about_us():
    return render_template("aboutus.jinja")


app.run('0.0.0.0', port=5000)
