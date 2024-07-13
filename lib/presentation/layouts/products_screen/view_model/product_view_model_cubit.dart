import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:products_route/Domain/entities/productEntinty.dart';
import 'package:products_route/Domain/use_cases/products_usecase.dart';
part 'product_view_model_state.dart';
@injectable
class ProductViewModelCubit extends Cubit<ProductViewModelState> {
  @factoryMethod
  ProductViewModelCubit(this.productsUsecase)
      : super(ProductViewModelInitial());

  ProductsUsecase productsUsecase;
  getAllProducts() async {
    emit(ProductLoadingState());
    var result = await productsUsecase.call();
    result.fold((products) {
      emit(ProductSuccessState(products));
    }, (error) {
      emit(ProductErrorState(error));
    });
  }
}
