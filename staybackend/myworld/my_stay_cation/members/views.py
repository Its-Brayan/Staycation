from django.shortcuts import render
from rest_framework.response import Response
from rest_framework import status
from .serializers import *
from rest_framework.decorators import api_view
from .models import  *
from django.views.decorators.csrf import csrf_exempt
# Create your views here.

@csrf_exempt
@api_view(['POST','GET'])
def createPersonalInfo(request):
    if request.method=="POST":
     serializer = PersonalSerializer(data=request.data)
     if serializer.is_valid():
        serializer.save()
        return Response(serializer.data, status=status.HTTP_201_CREATED)
     return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    elif request.method=="GET":
        personalInfo = PersonalInfo.objects.all()
        serializer = PersonalSerializer(personalInfo, many=True)
        return Response(serializer.data)

