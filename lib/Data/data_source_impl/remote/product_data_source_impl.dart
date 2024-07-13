import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:products_route/Data/data_source_contract/remote/product_datasource.dart';
import 'package:products_route/Data/models/product_response/Product_response.dart';
import 'package:products_route/core/api/api_manager.dart';
import 'package:products_route/core/api/endpoints.dart';
@Injectable(as: ProductDatasource)
class ProductDataSourceImpl extends ProductDatasource {
  ApiManager apiManager;
  @factoryMethod
  ProductDataSourceImpl(this.apiManager);

  @override
  Future<Either<ProductResponse, String>> getAllProduct() async {
    try {
      var response =
          await apiManager.getRequest(endpoints: endpoints.productsEndpoint);
      ProductResponse productResponse = ProductResponse.fromJson(response.data);
      return Left(productResponse);
    } catch (error) {
      return Right(error.toString());
    }
  }
}
