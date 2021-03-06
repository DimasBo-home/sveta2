# Generated by Django 2.2.4 on 2019-09-15 07:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cart', '0003_auto_20190915_0723'),
    ]

    operations = [
        migrations.AddField(
            model_name='item',
            name='quantity',
            field=models.PositiveIntegerField(default=1, verbose_name='quantity'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='item',
            name='unit_price',
            field=models.DecimalField(decimal_places=2, default=10, max_digits=18, verbose_name='unit price'),
            preserve_default=False,
        ),
    ]
