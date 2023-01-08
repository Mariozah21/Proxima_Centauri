from wtforms import Form, PasswordField, StringField, IntegerField, DecimalField, validators
class RegisterUserForm(Form):
    meno = StringField(name='meno',label='Meno',validators=[validators.length(min=2,max=50), validators.InputRequired()])
    priezvisko = StringField(name='priezvisko',label='Priezvisko',validators=[validators.length(min=2,max=100), validators.InputRequired()])
    pohlavie = StringField(name='pohlavie',label='Pohlavie',validators=[validators.length(min=1,max=5), validators.InputRequired()])
    email = StringField(name='email',label='Email',validators=[validators.length(min=2,max=100), validators.InputRequired()])
    heslo = PasswordField(name='heslo',label='Heslo',validators=[validators.length(min=5,max=100), validators.InputRequired()])

class SignInForm(Form):
    login = StringField(name='email',label='Email',validators=[validators.Length(min=5,max=100), validators.InputRequired()])
    heslo = PasswordField(name='heslo', label='heslo', validators=[validators.Length(min=3), validators.InputRequired()])

class NewBaseForm(Form):
    nazov = StringField(name='nazov',label='Nazov',validators=[validators.length(min=2,max=50), validators.InputRequired()])
    stavej = IntegerField(name='stavej',label='Stavej',validators=[validators.InputRequired()])
    suradnica_x =DecimalField(name='suradnica_x',label='Suradnica_x',validators=[validators.InputRequired()])
    suradnica_y = DecimalField(name='suradnica_y',label='Suradnica_y',validators=[validators.InputRequired()])
    medzi_galakticke_kredity = IntegerField(name='medzi_galakticke_kredity',label='Medzi_galakticke_kredity',validators=[validators.InputRequired()])