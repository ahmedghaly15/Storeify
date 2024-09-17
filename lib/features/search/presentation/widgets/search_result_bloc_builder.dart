import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/product_item.dart';
import 'package:store_ify/features/search/presentation/cubit/search_cubit.dart';
import 'package:store_ify/features/search/presentation/cubit/search_state.dart';

class SearchResultBlocBuilder extends StatelessWidget {
  const SearchResultBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (_, current) =>
          current is SearchLoading ||
          current is SearchSuccess ||
          current is SearchError,
      builder: (context, state) => state.maybeWhen(
        searchLoading: () => const SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: CustomCircularProgressIndicator(),
          ),
        ),
        searchSuccess: (searchResult) => searchResult.products.isNotEmpty
            ? SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                sliver: SliverGrid.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: AppConstants.gridCrossAxisCount,
                    crossAxisSpacing: 8.w,
                    mainAxisSpacing: 8.h,
                  ),
                  itemBuilder: (_, index) => _animatedProductItem(
                    index,
                    searchResult.products[index],
                  ),
                  itemCount: searchResult.products.length,
                ),
              )
            : const SliverToBoxAdapter(
                child: Text('Empty search result'),
              ),
        searchError: (errorKey) => errorKey != 'SEARCH_REQUIRED'
            ? SliverFillRemaining(
                hasScrollBody: false,
                child: CustomErrorWidget(errorKey: errorKey),
              )
            : const SliverToBoxAdapter(
                child: SizedBox.shrink(),
              ),
        orElse: () => const SliverToBoxAdapter(
          child: SizedBox.shrink(),
        ),
      ),
    );
  }

  Widget _animatedProductItem(int index, Product product) {
    return index % 2 == 0
        ? FadeInLeft(
            child: ProductItem(product: product),
          )
        : FadeInRight(
            child: ProductItem(product: product),
          );
  }
}
