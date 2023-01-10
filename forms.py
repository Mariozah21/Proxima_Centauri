from wtforms import Form, PasswordField, StringField, IntegerField, DecimalField, RadioField, validators
class RegisterUserForm(Form):
    meno = StringField(name='meno',label='Meno',validators=[validators.length(min=2,max=50), validators.InputRequired()])
    priezvisko = StringField(name='priezvisko',label='Priezvisko',validators=[validators.length(min=2,max=100), validators.InputRequired()])
    pohlavie = StringField(name='pohlavie',label='Pohlavie',validators=[validators.length(min=1,max=5), validators.InputRequired()])
    email = StringField(name='email',label='Email',validators=[validators.length(min=2,max=100), validators.InputRequired()])
    heslo = PasswordField(name='heslo',label='Heslo',validators=[validators.length(min=5,max=100), validators.InputRequired()])
    zakladne_id_zakladne = RadioField(name='zakladne_id_zakladne', label='Zakladna', choices = [('1','Merkur01'),('2','Venusa02'), ('3','Zem03'),('4','Mars04'), ('5','Jupiter05'),('6','Saturn06'), ('7','Uran07'),('8','Neptun08')], default=1)

class SignInForm(Form):
    login = StringField(name='email',label='Email',validators=[validators.Length(min=5,max=100), validators.InputRequired()])
    heslo = PasswordField(name='heslo', label='Heslo', validators=[validators.Length(min=3), validators.InputRequired()])

class NewBaseForm(Form):
    nazov = StringField(name='nazov',label='Nazov',validators=[validators.length(min=2,max=50), validators.InputRequired()])
    stavej = IntegerField(name='stavej',label='Stavej',validators=[validators.InputRequired()])
    suradnica_x = DecimalField(name='suradnica_x',label='Suradnica_x',validators=[validators.InputRequired()])
    suradnica_y = DecimalField(name='suradnica_y',label='Suradnica_y',validators=[validators.InputRequired()])
    medzi_galakticke_kredity = IntegerField(name='medzi_galakticke_kredity',label='Medzi_galakticke_kredity',validators=[validators.InputRequired()])

class UserMoveForm(Form):
    email = StringField(name='email',label='Email uzivatela',validators=[validators.length(min=2,max=100), validators.InputRequired()])
    heslo = PasswordField(name='heslo', label='Heslo uzivatela', validators=[validators.Length(min=3), validators.InputRequired()])
    zakladne_id_zakladne = IntegerField(name='zakladne_id_zakladne',label='Nova zakladna uzivatela',validators=[validators.InputRequired()])
 
class NameUserForm(Form):
    email = StringField(name='email',label='Email uzivatela',validators=[validators.length(min=2,max=100), validators.InputRequired()])
    heslo = PasswordField(name='heslo', label='Heslo uzivatela', validators=[validators.Length(min=3), validators.InputRequired()])

    
class EnergyForm(Form):
    nazov = StringField(name='nazov',label='Nazov',validators=[validators.length(min=2,max=50), validators.InputRequired()])
    kolik = IntegerField(name='stavej',label='Energy',validators=[validators.InputRequired()])

class ChangeMenoform(Form):
    meno = StringField(name='meno',label='Nove Meno',validators=[validators.length(min=2,max=50), validators.InputRequired()])
    priezvisko = StringField(name='priezvisko',label='Nove Priezvisko',validators=[validators.length(min=2,max=100), validators.InputRequired()])
    heslo = PasswordField(name='heslo',label='Heslo',validators=[validators.length(min=5,max=100), validators.InputRequired()])

class ChangeHesloForm(Form):
    heslo = PasswordField(name='heslo',label='Stare heslo',validators=[validators.length(min=5,max=100), validators.InputRequired()])
    noveheslo = PasswordField(name='noveheslo',label='Nove Heslo',validators=[validators.length(min=5,max=100), validators.InputRequired()])

class ChangeEmailForm(Form):
    novyemail = StringField(name='novyemail',label='Novy Email',validators=[validators.length(min=2,max=100), validators.InputRequired()])
    heslo = PasswordField(name='heslo',label='Heslo',validators=[validators.length(min=5,max=100), validators.InputRequired()])

class ZmenaUdajuForm(Form):
    meno = StringField(name='meno',label='Meno',validators=[validators.length(min=2,max=50), validators.InputRequired()])
    priezvisko = StringField(name='priezvisko',label='Priezvisko',validators=[validators.length(min=2,max=100), validators.InputRequired()])
    pohlavie = StringField(name='pohlavie',label='Pohlavie',validators=[validators.length(min=1,max=5), validators.InputRequired()])
    email = StringField(name='email',label='Email uzivatela',validators=[validators.length(min=2,max=100), validators.InputRequired()])
    heslo = PasswordField(name='heslo', label='Heslo uzivatela', validators=[validators.Length(min=3), validators.InputRequired()])
    