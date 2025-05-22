import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:market_app/helper/api.dart';
import 'package:market_app/models/productmodel.dart';


class Allcategories {
  Future<List<dynamic>> getAllcategories() async {
    List<dynamic> data = await Api().get(urladdress: 'https://fakestoreapi.com/products/categories');
  

    return data;
  }
}