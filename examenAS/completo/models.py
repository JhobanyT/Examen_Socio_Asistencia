from django.db import models

# Create your models here.
CATEGORIA_SOCIO=[
    ('Principiante','Socio Principiante'),
    ('Intermedio','Socio Intermedio'),
    ('Avanzado','Socio Avanzado'),
]
ESTADO_SOCIO=[
    ('Activo','Activo'),
    ('Inactivo','Inactivo'),
]
class Socio(models.Model):

    nombres=models.CharField(max_length=50)
    apellidos=models.CharField(max_length=50)
    estado_socio=models.CharField(max_length=15,choices=ESTADO_SOCIO)
    categoria=models.CharField(max_length=25,choices=CATEGORIA_SOCIO)
    distrito=models.CharField(max_length=30)
    dni=models.CharField(max_length=8)
    email=models.EmailField(max_length=50)
    direccion=models.CharField(max_length=40)
    celular=models.CharField(max_length=15)
    fecha_nacimiento=models.DateField()
    created=models.DateField(auto_now_add=True)
    updated=models.DateField(auto_now=True)

    class Meta:
        verbose_name = ("Socio")
        verbose_name_plural = ("Socios")

    def __str__(self):
        return self.nombres

TIPO_REUNION=[
    ('Asamblea','ASAMBLEA'),
    ('Padron','PADRON'),
    ('Faena','FAENA'),
]
class Asistencia(models.Model):

    treunion=models.CharField(max_length=20, choices=TIPO_REUNION)
    descripcion=models.CharField(max_length=200)
    socio=models.ForeignKey("Socio", on_delete=models.CASCADE)
    fecha_inicio=models.DateTimeField()
    fecha_salida=models.DateTimeField()
    created=models.DateField(auto_now_add=True)
    updated=models.DateField(auto_now=True)

    class Meta:
        verbose_name = ("Asistencia")
        verbose_name_plural = ("Asistencias")

    def __str__(self):
        return self.treunion