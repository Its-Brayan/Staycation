import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/person.dart';

class personservice{
  final String baseUrl = 'http://10.7.5.22:8000';
  final http.Client _client = http.Client();

  Future<person>  getPerson(int id) async{
    try{
      final response =await _client.get(
        Uri.parse('$baseUrl/personalinfo/$id/'),
        headers:{
          'content-type':'application/json'
        }

      );
      if (response.statusCode==200){
        final Map<String,dynamic> personaldata = json.decode(response.body);
        return person.fromJson(personaldata);

      }
      else if(response.statusCode==404){
        throw Exception('User not Found');
      }
      else{
        throw Exception('Failed to fetch user');
      }
    }
    catch(e){
      throw Exception('Failed to fetch user');
      }
    }
    Future<person> createPerson(person personal) async{
    try{
      final response = await _client.post(
        Uri.parse('$baseUrl/personalinfo/'),
        headers: {
          'Content-Type':'application/json',
          'Accept': 'application/json',
        },
        body: json.encode(personal.toJson()),
      );
    if(response.statusCode==201){
      final Map<String,dynamic> JsonData = json.decode(response.body);
      return person.fromJson(JsonData);
    }
    else if(response.statusCode==400){
      throw Exception('Invalid request');
    }
    else{
      throw Exception('Failed to create user');
    }
    }catch(e){
      throw Exception('Failed to create user');
    }
    }
  }

