part of 'product_view_model_cubit.dart';

@immutable
sealed class ProductViewModelState {}

final class ProductViewModelInitial extends ProductViewModelState {}

final class ProductSuccessState extends ProductViewModelState {
  List<ProductEntity> products;
  ProductSuccessState(this.products);
}

final class ProductErrorState extends ProductViewModelState {
  String error;
  ProductErrorState(this.error);
}

final class ProductLoadingState extends ProductViewModelState {}
