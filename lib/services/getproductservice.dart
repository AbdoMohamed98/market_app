import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:market_app/models/productmodel.dart';

class Getproduct {
Future<List<dynamic>> getProductservice() async {
  var url = Uri.parse('https://fakestoreapi.com/products');
  var response = await http.get(url);
  if (response.statusCode == 200) {
   var data =  jsonDecode(response.body);
   List<Productmodel> productlist = [];
    for (var i = 0; i < data.length; i++) {
      productlist.add(Productmodel.fromJson( data[i])); 
    }
    return productlist;
  } else {
    throw Exception('Failed to load products');
  }

}}