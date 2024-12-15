import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/features/product_details/presentation/cubit/product_details_cubit.dart';
import 'package:store_ify/features/product_details/presentation/widgets/product_details_view_body.dart';

@RoutePage()
class ProductDetailsView extends StatelessWidget implements AutoRouteWrapper {
  const ProductDetailsView({super.key, required this.product});

  final Product product;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ProductDetailsCubit>(
      create: (_) => getIt.get<ProductDetailsCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductDetailsViewBody(product: product),
    );
  }
}
