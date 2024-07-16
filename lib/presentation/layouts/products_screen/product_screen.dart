import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_route/core/Di/di.dart';
import 'package:products_route/core/Utils/assets_manager.dart';
import 'package:products_route/presentation/layouts/products_screen/view_model/product_view_model_cubit.dart';
import 'package:products_route/presentation/layouts/products_screen/widgets/product_widget.dart';
import 'package:products_route/presentation/layouts/products_screen/widgets/search_%20bar_widget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        scrolledUnderElevation: 0,
        title: Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AssetsManager.routeLogo,
              ),
              const SizedBox(height: 19),
              Row(
                children: [
                  const Expanded(child: SearchBarWidget()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        size: 30,
                        color: Theme.of(context).colorScheme.primary,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<ProductViewModelCubit>()..getAllProducts(),
        child: BlocBuilder<ProductViewModelCubit, ProductViewModelState>(
          buildWhen: (previous, current) {
            if (current is ProductErrorState ||
                current is ProductLoadingState ||
                current is ProductSuccessState) {
              return true;
            }
            return false;
          },
          builder: (context, state) {
            if (state is ProductSuccessState) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) =>
                      ProductWidget(product: state.products[index]),
                  itemCount: state.products.length,
                ),
              );
            }
            if (state is ProductErrorState) {
              return Center(child: Text(state.error));
            }
            return const Center(child: CircularProgressIndicator.adaptive());
          },
        ),
      ),
    );
  }
}
