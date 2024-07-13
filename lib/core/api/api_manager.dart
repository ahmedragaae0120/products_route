import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:products_route/core/constants.dart';


@singleton
class ApiManager {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(baseUrl: Constants.baseUrl));
  }

  Future<Response> getRequest(
      {required String endpoints,
      Map<String, dynamic>? queryParameters}) async {
    var response = await dio.get(endpoints, queryParameters: queryParameters);
    return response;
  }
}
