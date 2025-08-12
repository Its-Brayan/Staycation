import 'package:flutter/material.dart';
import '../models/person.dart';
import '../services/personservice.dart';

class userprovider with ChangeNotifier{
  final personservice _personservice = personservice();
  List<person> _persons=[];
  bool _isloading = false;
  List<person> get persons => _persons;
  bool get isloading => _isloading;
  Future<void> loadpersons(payload)async{
    _isloading = true;
    notifyListeners();
    try {
      _persons = await _personservice.createperson(payload);
    }catch(error){
      print("error creating person $error");
    }
    _isloading = false;
    notifyListeners();
  }

}