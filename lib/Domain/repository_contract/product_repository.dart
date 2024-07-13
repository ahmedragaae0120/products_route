import 'package:dartz/dartz.dart';
import 'package:products_route/Domain/entities/productEntinty.dart';


abstract class ProductRepo {
  Future<Either<List<ProductEntity>, String>> getAllProducts();
}
