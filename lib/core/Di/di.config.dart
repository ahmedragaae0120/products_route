// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../Data/data_source_contract/remote/product_datasource.dart' as _i4;
import '../../Data/data_source_impl/remote/product_data_source_impl.dart'
    as _i5;
import '../../Data/repository_impl/product_repo_impl.dart' as _i7;
import '../../Domain/repository_contract/product_repository.dart' as _i6;
import '../../Domain/use_cases/products_usecase.dart' as _i8;
import '../api/api_manager.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ApiManager>(() => _i3.ApiManager());
    gh.factory<_i4.ProductDatasource>(
        () => _i5.ProductDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i6.ProductRepo>(
        () => _i7.ProductRepoImpl(gh<_i4.ProductDatasource>()));
    gh.factory<_i8.ProductsUsecase>(
        () => _i8.ProductsUsecase(gh<_i6.ProductRepo>()));
    return this;
  }
}
