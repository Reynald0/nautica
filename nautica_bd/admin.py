from django.contrib import admin
from .models import Barcos, Personas, BarcosSalidas

class BarcosAdmin(admin.ModelAdmin):
    list_display = ('matricula', 'nombre', 'numero_amarre', 'cuota_pago')

class PersonasAdmin(admin.ModelAdmin):
    list_display = ('rfc', 'nombre', 'apellido_paterno', 'apellido_materno', 'fecha_nac', 'tel', 'socio')

class BarcosSalidasAdmin(admin.ModelAdmin):
    list_display = ('id', 'rfc_persona', 'barcos_matricula', 'fecha', 'hora', 'destino')

admin.site.register(Barcos, BarcosAdmin)
admin.site.register(Personas, PersonasAdmin)
admin.site.register(BarcosSalidas, BarcosSalidasAdmin)