from django import forms
from .models import Question#, Order

class FormQuestion(forms.ModelForm):
	class Meta:
		model = Question
		fields = '__all__'

# class FormOrder(forms.ModelForm):
# 	class Meta:
# 		model = Order
# 		fields = ['total_price','second_name','first_name','last_name','phone_number','email','buying_type','address','comments']
