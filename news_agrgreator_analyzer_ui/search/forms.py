from django import forms


class SearchForm(forms.Form):
    search = forms.CharField(label= 'Search Keyword', max_length=250)