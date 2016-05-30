# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models


class ActualizarBarcos(models.Model):
    total = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'actualizar_barcos'


class Barcos(models.Model):
    matricula = models.CharField(primary_key=True, max_length=10)
    nombre = models.CharField(max_length=100)
    numero_amarre = models.IntegerField()
    cuota_pago = models.FloatField()

    def __unicode__(self):
        return self.matricula

    class Meta:
        managed = False
        db_table = 'barcos'
        verbose_name = "Barco"


class BarcosSalidas(models.Model):
    rfc_persona = models.ForeignKey('Personas', models.DO_NOTHING, db_column='rfc_persona')
    barcos_matricula = models.ForeignKey('Barcos', models.DO_NOTHING, db_column='barcos_matricula')
    fecha = models.DateField()
    hora = models.TimeField()
    destino = models.CharField(max_length=45)

    def __unicode__(self):
        return self.rfc_persona.rfc + ' - ' + self.barcos_matricula.matricula

    class Meta:
        managed = False
        db_table = 'barcos_salidas'
        unique_together = (('rfc_persona', 'barcos_matricula'),)
        verbose_name = "Barco Salida"


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class Movimientos(models.Model):
    usuario = models.CharField(max_length=100)
    fecha = models.DateTimeField()
    accion = models.CharField(max_length=1)
    tabla = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'movimientos'


class Personas(models.Model):
    rfc = models.CharField(primary_key=True, max_length=10)
    nombre = models.CharField(max_length=45)
    apellido_paterno = models.CharField(max_length=45)
    apellido_materno = models.CharField(max_length=45)
    fecha_nac = models.DateField()
    tel = models.CharField(max_length=45)
    socio = models.CharField(max_length=2)

    class Meta:
        managed = False
        db_table = 'personas'
        verbose_name = "Persona"

    def __unicode__(self):
        return self.rfc


class Total(models.Model):
    total_cuota_pago = models.FloatField()

    class Meta:
        managed = False
        db_table = 'total'
