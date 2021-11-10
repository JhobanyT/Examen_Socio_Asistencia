from django.shortcuts import render
from rest_framework import viewsets
from .serializers import SocioSerializer
from .serializers import AsistenciaSerializer
from .models import Socio
from .models import Asistencia
# Create your views here.

class SocioViewset (viewsets.ModelViewSet):
    queryset=Socio.objects.all()
    serializer_class=SocioSerializer

class AsistenciaViewset (viewsets.ModelViewSet):
    queryset=Asistencia.objects.all()
    serializer_class=AsistenciaSerializer