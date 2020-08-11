import 'package:edziban/app/data/remote/food_remote_data_source.dart';

import '../../domain/entities/home/product.dart';

abstract class ProductRemoteDataSource {
  Future<Product> findProductById(String id);
  Future<void> addProduct(ProductModel product);
  Future<List<Product>> getProduct();
}
