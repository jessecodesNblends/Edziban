import 'package:flutter/foundation.dart';

class Product extends ChangeNotifier {
  final String id; // PK
  final String category; // FK
  final String name;
  final String price;
  final String image;
  bool isFavourite;

  Product({
    @required this.id,
    @required this.category,
    @required this.name,
    @required this.price,
    @required this.image,
    this.isFavourite = false,
  });

  void toggleFavouriteStatus() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
