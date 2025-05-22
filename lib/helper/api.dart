import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {

 Future<List<dynamic>> get({required String urladdress}) async {
    var url = Uri.parse(urladdress);
    var response = await http.get(url);
    if (response.statusCode == 200) {
     
     
      return json.decode(response.body);
    } 
    else {
      throw Exception('Failed to load products');
    }}}



