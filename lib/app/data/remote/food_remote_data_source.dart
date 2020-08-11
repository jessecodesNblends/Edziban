import 'dart:convert';

import 'package:edziban/app/data/remote/product_remote_data_source.dart';
import 'package:edziban/app/domain/entities/home/product.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class FoodRemoteDataSource implements ProductRemoteDataSource {
  static const BASEURL = 'https://edziban-3414e.firebaseio.com';

  @override
  Future<Product> findProductById(String id) {
    // TODO: implement findProductById
    throw UnimplementedError();
  }

  @override
  Future<void> addProduct(ProductModel product) {
    // Convert to JSON object
    var json = jsonEncode(product.toJSON());

    post(BASEURL + '/products.json', body: json);
  }

  @override
  Future<List<Product>> getProduct() {
    // TODO: implement getProduct
    throw UnimplementedError();
  }
}

class ProductModel extends Product {
  ProductModel({
    @required String id,
    @required String category,
    @required String name,
    @required String price,
    @required String image,
    bool isFavourite,
  }) : super(
            id: id, category: category, name: name, price: price, image: image);

  factory ProductModel.fromJSON(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      category: json['category'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJSON() {
    return {
      "id": id,
      "category": category,
      "name": name,
      "price": price,
      "image": image,
    };
  }
}
