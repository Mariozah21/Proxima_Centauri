from flask import Flask, render_template,request, flash, redirect, url_for, session
from Database import database
from service.user_service import UserService
from service.base_service import BaseService
import forms, auth

app = Flask(__name__)
app.config['DEBUG'] = True
app.config.from_object('config')
database.init_app(app)



@app.route("/")
def index():
    return render_template("index.jinja")


@app.route("/login", methods=['GET','POST'])
def view_login_page():
    form = forms.SignInForm(request.form)
    if request.method == 'POST':
        user = UserService.verify(login=request.form['email'], heslo=request.form['heslo'])
        if not user:
            flash('Nespravny email alebo heslo')
        else:
            flash
            session['authenticated'] = 1
            session['email'] = user['email']
            session['role'] = user['id_role']
            session['meno'] = user['meno']
            session['priezvisko'] = user['priezvisko']
            session['id_zakladne'] = user['zakladne_id_zakladne']
            

            return redirect(url_for('view_myprofile_page'))
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
           zakladne_id_zakladne=request.form['zakladne_id_zakladne'],
        )
        flash('Uzivatel zaregistrovany')
        return redirect(url_for('view_login_page'))
    return render_template("register.jinja", form=form)


@app.route("/account")
def view_account_page():
    return render_template("account.jinja")


@app.route("/myprofile")
@auth.login_required
def view_myprofile_page():
    return render_template("myprofile.jinja")


@app.route("/basemap")
def view_basemap_page():
    return render_template("basemap.jinja")


@app.route("/mybase")
@auth.login_required
def view_mybase_page():
    return render_template("mybase.jinja")


@app.route("/aboutus")
def view_about_us():
    return render_template("aboutus.jinja")

@app.route("/ultvlad")
@auth.login_required
@auth.roles_required(1)
def view_ultvlad_page():
    return render_template("ultvlad.jinja")

@app.route("/ultvlad/newbase", methods=['GET','POST'])
@auth.login_required
@auth.roles_required(1)
def view_new_base():
    form = forms.NewBaseForm(request.form)
    if request.method == 'POST':
        BaseService.add_base(
           nazov=request.form['nazov'],
           stavej=request.form['stavej'],
           suradnica_x=request.form['suradnica_x'],
           suradnica_y=request.form['suradnica_y'],
           medzi_galakticke_kredity=request.form['medzi_galakticke_kredity'], 
        )
        flash('Uzivatel zaregistrovany')
    return render_template("newbase.jinja", form=form)

@app.route("/ultvlad/usermove", methods=['GET','POST'])
@auth.login_required
@auth.roles_required(1)
def view_user_move():
    form = forms.UserMoveForm(request.form)
    if request.method == 'POST':
        UserService.move_user(zakladne_id_zakladne=request.form['zakladne_id_zakladne'], email=request.form['email'], heslo=request.form['heslo'])
        flash('Uzivatel presunut')
        return redirect(url_for('view_ultvlad_page'))
    return render_template("usermove.jinja", form=form)

@app.route("/ultvlad/namingvladca", methods=['GET','POST'])
@auth.login_required
@auth.roles_required(1)
def view_naming_vladca():
    form = forms.NameUserForm(request.form)
    if request.method == 'POST':
        UserService.name_user(email=request.form['email'], heslo=request.form['heslo'])
        flash('Vladca jmenovan')
        return redirect(url_for('view_ultvlad_page'))
    return render_template("namingvladca.jinja", form=form)

@app.route("/ultvlad/energprice", methods=['GET','POST'])
@auth.login_required
@auth.roles_required(1)
def view_energ_price():
    form = forms.EnergyForm(request.form)
    if request.method == 'POST':
        UserService.name_user(kolik=request.form['stavej'], nazov=request.form['nazov'])
        flash('Jednotky zmeneny')
        return redirect(url_for('view_ultvlad_page'))
    return render_template("energprice.jinja", form=form)

@app.route('/logout')
@auth.login_required
def logout():
    session.pop("authenticated")
    session.pop("email")
    return redirect(url_for('index'))


app.run('0.0.0.0', port=5000)
