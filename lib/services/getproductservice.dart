import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:market_app/helper/api.dart';
import 'package:market_app/models/productmodel.dart';

class AllProduct {
  Future<List<Productmodel>> getAllProducts({required String categoryname}) async {
    List<dynamic> data = await Api().get(urladdress: 'https://fakestoreapi.com/products/category/$categoryname');
    List<Productmodel> productList = [];

    for (int i = 0; i < data.length; i++) {
      productList.add(Productmodel.fromJson(data[i]));
    }

    return productList;
  }
}
