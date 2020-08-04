import 'package:edziban/app/domain/entities/home/product.dart';
import 'package:flutter/foundation.dart';

class ProductModel extends Product {
  ProductModel({
    @required String id,
    @required String category,
    @required String name,
    @required String price,
    @required String image,
    bool isFavourite,
  }) : super(
          id: id,
          category: category,
          name: name,
          price: price,
          image: image,
        );
}
