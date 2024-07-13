import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:products_route/Data/data_source_contract/remote/product_datasource.dart';
import 'package:products_route/Data/models/product_response/Product_model.dart';
import 'package:products_route/Domain/entities/productEntinty.dart';
import 'package:products_route/Domain/repository_contract/product_repository.dart';
@Injectable(as: ProductRepo)
class ProductRepoImpl extends ProductRepo {
  ProductDatasource apiDataSource;
  @factoryMethod
  ProductRepoImpl(this.apiDataSource);
  @override
  Future<Either<List<ProductEntity>, String>> getAllProducts() async {
    var result = await apiDataSource.getAllProduct();
    return result.fold((response) {
      List<ProductsModel> productModelList = response.products ?? [];
      List<ProductEntity> productEntityList =
          productModelList.map((product) => product.toProductEntity()).toList();
      print(productEntityList);
      return Left(productEntityList);
    }, (error) {
      return Right(error);
    });
  }
}
