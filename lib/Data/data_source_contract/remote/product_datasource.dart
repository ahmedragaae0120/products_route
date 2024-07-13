import 'package:dartz/dartz.dart';
import 'package:products_route/Data/models/product_response/Product_response.dart';

abstract class ProductDatasource{
  Future<Either<ProductResponse, String>> getAllProduct();
}
