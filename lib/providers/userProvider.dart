import 'package:flutter/material.dart';
import '../models/person.dart';
import '../services/personservice.dart';

class userprovider with ChangeNotifier {
  final personservice _personservice = personservice();
  List<person> _persons = [];
  person? _selectedPerson;
  bool _isloading = false;
  String? _error;

  //Getters
  List<person> get persons => _persons;

  person? get selected => _selectedPerson;

  bool get isloading => _isloading;

  String? get error => _error;

  Future<void> loadPerson(int id) async{
    _clearError();
    try {
      final user = await _personservice.getPerson(id);
      _selectedPerson = user;
      notifyListeners();
    }catch(e){
      _setError(e.toString());
    }
  }
  Future<void> createPerson(person user) async{
    _clearError();
    try{
      final newUser = await _personservice.createPerson(user);
      _persons.add(newUser);
      notifyListeners();
    }catch(e){
      _setError(e.toString());
    }
  }
 void _setError(String error){
    _error = error;
    notifyListeners();
 }
  void _clearError(){
    _error = null;


  }
}