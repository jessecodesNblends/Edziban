import 'package:edziban/app/data/models/home/product_model.dart';
import 'package:edziban/app/domain/entities/home/product.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final String tId = 'p1';
  final String tCategory = 'c1';
  final String tName = 'Waakye';
  final String tPrice = '5.00';
  final String tImage = 'images/plate-007.png';

  final tProductModel = ProductModel(
    id: tId,
    category: tCategory,
    name: tName,
    price: tPrice,
    image: tImage,
  );

  test(
    'should be a subclass of the Product entity',
    () async {
      // assert
      expect(tProductModel, isA<Product>());
    },
  );
}
