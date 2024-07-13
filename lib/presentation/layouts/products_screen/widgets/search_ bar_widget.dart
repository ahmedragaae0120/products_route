import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_route/core/Utils/assets_manager.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 1.5),
              borderRadius: const BorderRadius.all(Radius.circular(25))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 1.5),
              borderRadius: const BorderRadius.all(Radius.circular(25))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 1.5),
              borderRadius: const BorderRadius.all(Radius.circular(25))),
          hintText: AssetsManager.searchBarHintText,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          prefixIcon: Icon(
            Icons.search_rounded,
            size: 30.sp,
            textDirection: TextDirection.ltr,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
