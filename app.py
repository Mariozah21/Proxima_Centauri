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
            session['profilovka'] = user['profilovka']
            

            return redirect(url_for('view_myprofile_page'))
    return render_template("login.jinja" ,form = form )

@app.route("/register", methods=['GET','POST'])
def view_register_page():
    form = forms.RegisterUserForm(request.form)
    if request.method == 'POST':
        user = UserService.email_control(request.form['email'], request.form['zakladne_id_zakladne'], request.form['priezvisko'], request.form['pohlavie'])
        if user is None:
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
        else:
            flash('Uzivatel uz existuje')
            return redirect(url_for('view_register_page'))
    return render_template("register.jinja", form=form)


@app.route("/account")
@auth.login_required
def view_account_page():
    return render_template("account.jinja")

@app.route("/account/changemeno", methods=['GET','POST'])
@auth.login_required
def change_meno_page():
    form = forms.ChangeMenoform(request.form)
    if request.method == 'POST':
        user = UserService.Change_Meno_Priezvisko(email=session['email'],meno=request.form['meno'], priezvisko=request.form['priezvisko'], heslo=request.form['heslo'])
        if not user:  
            flash('nespravne heslo')  
        else:
            flash('Meno zmenene')
            session['meno'] = logic['meno']
            session['priezvisko'] = logic['priezvisko']
            return redirect(url_for('change_success_page'))
            
    return render_template("changemeno.jinja" , form=form)

@app.route("/account/changeprofilovka")
@auth.login_required
def change_profilovka_page():
    return render_template("changeprofilovka.jinja")

@app.route("/account/changeheslo", methods=['GET','POST'])
@auth.login_required
def change_heslo_page():
    form = forms.ChangeHesloForm(request.form)
    if request.method == 'POST':
        logic = UserService.change_heslo(email=session['email'],noveheslo=request.form['noveheslo'], heslo=request.form['heslo'])
        if logic == True:
            flash('Heslo zmenene')
            return redirect(url_for('change_success_page'))
        else:
            flash('Nespravne heslo')    
    else:
        flash('NejakyError')
    return render_template("changeheslo.jinja", form = form)

@app.route("/account/changeemail", methods=['GET','POST'])
@auth.login_required
def change_email_page():
    form = forms.ChangeEmailForm(request.form)
    if request.method == 'POST':
        user = UserService.change_email(email=session['email'],novyemail=request.form['novyemail'] + "@proxima.universe", heslo=request.form['heslo'])
        if not user:
            flash('Nespravne heslo')
            
        else:
            flash('email Zmeneny')
            session['email'] = user['email']
            return redirect(url_for('change_success_page'))

    return render_template("changeemail.jinja", form=form)   



@app.route("/account/changesuccess")
@auth.login_required
def change_success_page():
    return render_template("changesuccess.jinja")


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
    RegUzivatelia = UserService.get_users_mybase()
    return render_template("mybase.jinja",RegUzivatelia=RegUzivatelia)


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
        base = BaseService.base_control(request.form['nazov'], request.form['suradnica_x'], request.form['suradnica_y'])
        if base is None:
           BaseService.add_base(
           nazov=request.form['nazov'],
           stavej=request.form['stavej'],
           suradnica_x=request.form['suradnica_x'],
           suradnica_y=request.form['suradnica_y'],
           medzi_galakticke_kredity=request.form['medzi_galakticke_kredity'], 
           )
           flash('Zakladna pridana')
           return redirect(url_for('view_ultvlad_page'))
        else:
            flash('Zakladna uz existuje')
            return redirect(url_for('view_new_base'))
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
