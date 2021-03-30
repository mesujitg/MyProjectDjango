from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

from allusers.models import Account


class UserRegistrationForm(UserCreationForm):
    email = forms.EmailField()
    first_name = forms.TextInput()
    last_name = forms.TextInput()

    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'email', 'username', 'password1', 'password2']


class UserRegisterForm(forms.ModelForm):
    name = forms.TextInput()
    gender = forms.ChoiceField(choices=[('Male', 'Male'), ('Female', 'Female'), ('Other', 'Other')])
    dob = forms.DateField(widget=forms.DateInput(attrs={'type': 'date'}))
    address = forms.TextInput()
    email = forms.EmailField()
    phone = forms.IntegerField()
    username = forms.TextInput()
    password = forms.CharField(widget=forms.PasswordInput)

    class Meta:
        model = Account
        # fields = "__all__"
        fields = ['name', 'gender', 'dob', 'address', 'email', 'phone', 'username', 'password']
