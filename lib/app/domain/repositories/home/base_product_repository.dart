import 'package:dartz/dartz.dart';
import 'package:edziban/app/core/errors/failures.dart';
import 'package:edziban/app/domain/entities/home/product.dart';

abstract class BaseProductRepository {
  Future<Either<Failure, Product>> findProductById(String id);
}
