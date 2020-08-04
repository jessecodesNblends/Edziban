import 'package:dartz/dartz.dart';
import 'package:edziban/app/core/errors/failures.dart';
import 'package:edziban/app/domain/entities/home/product.dart';
import 'package:edziban/app/domain/repositories/home/base_product_repository.dart';
import 'package:flutter/foundation.dart';

class GetProduct {
  final BaseProductRepository repository;

  GetProduct(this.repository);

  Future<Either<Failure, Product>> execute({@required String id}) async {
    return await repository.findProductById(id);
  }
}
