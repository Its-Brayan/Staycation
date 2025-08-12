from rest_framework import serializers
from .models import *
class PersonalSerializer(serializers.ModelSerializer):
    class Meta:
        model = PersonalInfo
        fields = '__all__'
