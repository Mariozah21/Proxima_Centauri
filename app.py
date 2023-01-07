from flask import Flask, render_template,request, flash, redirect, url_for, session
from Database import database
from service.user_service import UserService
import forms

app = Flask(__name__)
app.config['DEBUG'] = True
database.init_app(app)



@app.route("/")
def index():
    return render_template("index.jinja")


@app.route("/login", methods=['GET','POST'])
def view_login_page():
    form = forms.SignInForm(request.form)
    if request.method == 'POST':
        user = UserService.verify(login=request.form['email'], password=request.form['password'])
        if not user:
            flash('Nespravny email alebo heslo')
        else:
            session['authenticated'] = 1
            session['email'] = user['email']
            session['typ_role'] = user['typ_role']
            return redirect(url_for('index'))
    return render_template("login.jinja" ,form = form )

@app.route("/register", methods=['GET','POST'])
def view_register_page():
    form = forms.RegisterUserForm(request.form)
    if request.method == 'POST':
        UserService.register_user(
           meno=request.form['meno'],
           priezvisko=request.form['priezvisko'],
           pohlavie=request.form['pohlavie'],
           email=request.form['email'],
           heslo=request.form['heslo'], 
        )
        flash('Uzivatel zaregistrovany')
    return render_template("register.jinja", form=form)


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
