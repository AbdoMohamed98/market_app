import 'package:market_app/helper/api.dart';
import 'package:market_app/models/productmodel.dart';

class AllProduct {
  Future<List<Productmodel>> getAllProducts() async {
    List data = await Api().get(urladdress: 'https://fakestoreapi.com/products');
    List<Productmodel> productList = [];

    for (int i = 0; i < data.length; i++) {
      productList.add(Productmodel.fromJson(data[i]));
    }

    return productList;
  }
}
