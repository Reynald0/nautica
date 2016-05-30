# -*- coding: utf-8 -*-
# Generated by Django 1.9.1 on 2016-05-29 22:24
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ActualizarBarcos',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('total', models.IntegerField()),
            ],
            options={
                'db_table': 'actualizar_barcos',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Barcos',
            fields=[
                ('matricula', models.CharField(max_length=10, primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=100)),
                ('numero_amarre', models.IntegerField()),
                ('cuota_pago', models.FloatField()),
            ],
            options={
                'db_table': 'barcos',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='BarcosSalidas',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha', models.DateField()),
                ('hora', models.TimeField()),
                ('destino', models.CharField(max_length=45)),
            ],
            options={
                'db_table': 'barcos_salidas',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoMigrations',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('app', models.CharField(max_length=255)),
                ('name', models.CharField(max_length=255)),
                ('applied', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_migrations',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Movimientos',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('usuario', models.CharField(max_length=100)),
                ('fecha', models.DateTimeField()),
                ('accion', models.CharField(max_length=1)),
                ('tabla', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'movimientos',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Personas',
            fields=[
                ('rfc', models.CharField(max_length=10, primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=45)),
                ('apellido_paterno', models.CharField(max_length=45)),
                ('apellido_materno', models.CharField(max_length=45)),
                ('fecha_nac', models.DateField()),
                ('tel', models.CharField(max_length=45)),
                ('socio', models.CharField(max_length=2)),
            ],
            options={
                'db_table': 'personas',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Total',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('total_cuota_pago', models.FloatField()),
            ],
            options={
                'db_table': 'total',
                'managed': False,
            },
        ),
    ]
