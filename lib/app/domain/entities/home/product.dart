import 'package:flutter/foundation.dart';

class Product {
  String id; // PK
  String category; // FK
  String name;
  String price;
  String clients;
  String rate;
  String image;
  bool isFavourite;

  Product({
    @required this.id,
    @required this.category,
    @required this.name,
    @required this.price,
    @required this.clients,
    @required this.rate,
    @required this.image,
    this.isFavourite,
  });
}
