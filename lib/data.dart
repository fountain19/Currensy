import 'dart:convert' as convert;

import 'package:http/http.dart' as http;





  Future getData()async{

    var response= await http.get(Uri.parse('https://api.ratesapi.io/api/latest'));
    if(response.statusCode==200){
      final   jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse );

return jsonResponse;

    }



}




