import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:products_route/Domain/entities/productEntinty.dart';
import 'package:products_route/Domain/repository_contract/product_repository.dart';

@injectable
class ProductsUsecase {
  ProductRepo productRepo;
  @factoryMethod
  ProductsUsecase(this.productRepo);
  Future<Either<List<ProductEntity>, String>> call() {
    return productRepo.getAllProducts();
  }
}
