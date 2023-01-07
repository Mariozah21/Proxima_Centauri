from wtforms import Form, PasswordField, StringField, validators
class RegisterUserForm(Form):
    meno = StringField(name='meno',label='Meno',validators=[validators.length(min=2,max=50), validators.InputRequired()])
    priezvisko = StringField(name='priezviisko',label='Priezvisko',validators=[validators.length(min=2,max=100), validators.InputRequired()])
    pohlavie = StringField(name='pohlavie',label='Pohlavie',validators=[validators.length(min=1,max=5), validators.InputRequired()])
    email = StringField(name='email',label='Email',validators=[validators.length(min=2,max=100), validators.InputRequired()])
    heslo = PasswordField(name='heslo',label='Heslo',validators=[validators.length(min=5,max=100), validators.InputRequired()])

class SignInForm(Form):
    login = StringField(name='email',label='Email',validators=[validators.Length(min=5,max=100), validators.InputRequired()])
    password = PasswordField(name='password', label='Password', validators=[validators.Length(min=3), validators.InputRequired()])