import 'package:edziban/app/core/network/base_network_info.dart';
import 'package:edziban/app/domain/entities/home/product.dart';
import 'package:edziban/app/data/remote/food_remote_data_source.dart';
import 'package:edziban/app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:edziban/app/domain/repositories/home/product_repository.dart';

class FoodRepositoryFactory implements ProductRepository {
  final FoodRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  FoodRepositoryFactory(this.remoteDataSource, this.networkInfo);

  @override
  Future<Either<Failure, Product>> findProductById(String id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Product>> addProduct(ProductModel productModel) async {
    if (await networkInfo.isConnected) {
      // Do something
    } else {
      // Do another thing
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getProducts() {
    throw UnimplementedError();
  }
}
