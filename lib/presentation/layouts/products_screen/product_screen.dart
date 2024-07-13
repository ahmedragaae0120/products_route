import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AssetsManager.routeLogo,
            ),
            SizedBox(height: 19.h),
            Row(
              children: [
                const Expanded(child: SearchBarWidget()),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      size: 30.sp,
                      color: Theme.of(context).colorScheme.primary,
                    )),
              ],
            ),
          ],
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
                padding: REdgeInsets.symmetric(horizontal: 15),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.w,
                    mainAxisSpacing: 10.h,
                    mainAxisExtent: 250.h,
                  ),
                  itemBuilder: (context, index) =>
                      ProductWidget(product: state.products[index]),
                  itemCount: state.products.length,
                ),
              );
            }
            if (state is ProductErrorState) {
              return Text(state.error);
            }
            return const Center(child: CircularProgressIndicator.adaptive());
          },
        ),
      ),
    );
  }
}
