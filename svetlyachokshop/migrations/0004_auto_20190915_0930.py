# Generated by Django 2.2.4 on 2019-09-15 09:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('svetlyachokshop', '0003_order_cart'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='email',
            field=models.EmailField(blank=True, max_length=254, null=True, verbose_name='Електрона пошта'),
        ),
        migrations.AlterField(
            model_name='order',
            name='total_price',
            field=models.DecimalField(blank=True, decimal_places=2, default=0, max_digits=9, verbose_name='Сума'),
        ),
    ]
