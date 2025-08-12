import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/person.dart';

class personservice{
  final String baseUrl = ' http://127.0.0.1:8000/';
  Future<List<person>> createperson(Map<String,dynamic>payload) async{
    final response =await http.post(
      Uri.parse('$baseUrl/personalinfo/'),
      headers:{
        'content-type':'application/json'
      },
      body: json.encode(payload),
    );
    if(response.statusCode==201){
      final List data = json.decode(response.body);
      return data.map((e)=>person.fromJson(e)).toList();
      }else{
      throw Exception('Failed to create person');

    }

  }

}