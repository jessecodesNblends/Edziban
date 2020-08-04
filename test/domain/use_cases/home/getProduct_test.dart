import 'package:edziban/app/domain/entities/home/product.dart';
import 'package:edziban/app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:edziban/app/domain/repositories/home/base_product_repository.dart';
import 'package:edziban/app/domain/use_cases/home/getProduct.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockProductRepository extends Mock implements BaseProductRepository {}

void main() {
  MockProductRepository mockProductRepository;
  GetProduct getProductUsecase;

  final String tId = 'p1';
  final String tCategory = 'c1';
  final String tName = 'Waakye';
  final String tPrice = '5.00';
  final String tImage = 'images/plate-007.png';

  final tProduct = Product(
    id: tId,
    category: tCategory,
    name: tName,
    price: tPrice,
    image: tImage,
  );

  setUp(() {
    mockProductRepository = MockProductRepository();
    getProductUsecase = GetProduct(mockProductRepository);
  });

  test(
    'should get product by id from the repository',
    () async {
      // arrange
      when(mockProductRepository.findProductById(any)).thenAnswer((_) async {
        return Right(tProduct);
      });
      // act
      final result = await getProductUsecase.execute(id: tId);
      // assert
      expect(result, Right(tProduct));
      verify(mockProductRepository.findProductById(tId));
      verifyNoMoreInteractions(mockProductRepository);
    },
  );
}
