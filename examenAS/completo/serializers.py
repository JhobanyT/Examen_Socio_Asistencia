from rest_framework import serializers
from .models import Socio
from .models import Asistencia

class SocioSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model=Socio
        fields=['id','nombres','apellidos','estado_socio','categoria','distrito','dni','email','direccion','celular','fecha_nacimiento']


class AsistenciaSerializer(serializers.HyperlinkedModelSerializer):
  socio = SocioSerializer

  class Meta:
    model=Asistencia
    fields=('id','treunion','descripcion','fecha_inicio','fecha_salida','socio','socio_id')