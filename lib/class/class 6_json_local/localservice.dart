import 'dart:convert';
import 'package:flutter/services.dart';
import 'person.dart';

class Localservice {
  Future <String> _loadPersonAsset() async {
    return await rootBundle.loadString('assets/data/info.json');


  }

  Future<Person> loadPerson() async{
    String jsonString = await _loadPersonAsset();
    final jsonResponse = jsonDecode(jsonString);
    return Person.fromJson(jsonResponse);
  }
}