import 'package:dartz/dartz.dart';
import 'package:edziban/app/core/errors/failures.dart';
import 'package:edziban/app/data/remote/food_remote_data_source.dart';
import 'package:edziban/app/domain/entities/home/product.dart';

import '../../../core/errors/failures.dart';
import '../../../core/errors/failures.dart';
import '../../entities/home/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, Product>> findProductById(String id);
  Future<Either<Failure, Product>> addProduct(ProductModel productModel);
  Future<Either<Failure, List<Product>>> getProducts();
}
