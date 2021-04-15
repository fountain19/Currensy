import 'package:flutter/material.dart';
import 'package:test2/model.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;



class Data extends ChangeNotifier{

  Curency _curency = Curency();

  setData(Curency curency){
    _curency=curency;
    notifyListeners();
  }

  Curency getData(){
    return _curency;
  }

  Future<Curency> hitApi()async{
    var response= await http.get(Uri.parse('https://api.ratesapi.io/api/latest'));
    if(response.statusCode==200) {
      final Map jsonResponse = convert.jsonDecode(response.body);
      Curency _curency = Curency.fromJson(jsonResponse);
      return _curency;
    }}
}