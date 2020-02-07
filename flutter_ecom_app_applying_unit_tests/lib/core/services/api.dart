import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_ecom_app_applying_unit_tests/core/models/product.dart';
import 'package:flutter_ecom_app_applying_unit_tests/helpers/constants.dart';

class API {
  static const endpoint = URL.ProductList;

  var client = new http.Client();

  Future<List<Product>> getProducts() async {
    var products = List<Product>();
    var response = await client.get('$endpoint' + 'products.json');

    var data = json.decode(response.body) as List<dynamic>;

    for (var product in data) {
      products.add(Product.fromJson(product));
    }

    return products;
  }
}