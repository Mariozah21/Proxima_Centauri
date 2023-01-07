from wtforms import Form, PasswordField, StringField, validators


class SignInForm(Form):
    login = StringField(name='email',label='email',validators=[validators.Length(min=5,max=100), validators.InputRequired()])
    password = PasswordField(name='password', label='Password', validators=[validators.Length(min=3), validators.InputRequired()])