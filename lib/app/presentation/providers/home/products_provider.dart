import 'package:edziban/app/data/data_source.dart';
import 'package:edziban/app/domain/entities/home/product.dart';
import 'package:flutter/material.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _products = allFoods;

  List<Product> get getProducts {
    return [..._products];
  }

  Product findProductById(String productId) {
    final product = _products.firstWhere((product) => product.id == productId);
    return product;
  }

  void addProduct(Product product) async {
    _products.add(product);
    notifyListeners();
  }
}
