import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/helper.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/cart/data/models/cart_product.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_state.dart';
import 'package:store_ify/features/cart/presentation/widgets/cart_product_item.dart';
import 'package:store_ify/features/cart/presentation/widgets/cart_products_sliver_list_bloc_builder.dart';

@RoutePage()
class CartView extends StatelessWidget implements AutoRouteWrapper {
  const CartView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CartCubit>(
      create: (_) => getIt.get<CartCubit>()..fetchCart(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          CustomSliverAppBar(titleKey: LangKeys.cart),
          CartProductsSliverListBlocBuilder(),
        ],
      ),
    );
  }
}
