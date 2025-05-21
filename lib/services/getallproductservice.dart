import 'dart:convert';

import 'package:http/http.dart' as http;

class Getallproduct {
  Future<List<dynamic>> getAllProductService() async {
    var url = Uri.parse('https://fakestoreapi.com/products/categories');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
     
      return data;
    } else {
      throw Exception('Failed to load products');
    }
  }
}