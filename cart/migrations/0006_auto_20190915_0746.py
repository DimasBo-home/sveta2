# Generated by Django 2.2.4 on 2019-09-15 07:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cart', '0005_item2'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='item2',
            name='object_id',
        ),
        migrations.AlterField(
            model_name='item2',
            name='unit_price',
            field=models.DecimalField(blank=True, decimal_places=2, max_digits=18, verbose_name='unit price'),
        ),
    ]
