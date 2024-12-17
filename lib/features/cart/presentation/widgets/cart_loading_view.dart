import 'package:flutter/material.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/shimmer_widget.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class CartLoadingView extends StatelessWidget {
  const CartLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSliverAppBar(
          titleKey: LocaleKeys.cart,
          hasLeading: false,
        ),
        SliverList.builder(
          itemCount: 8,
          itemBuilder: (_, index) => AspectRatio(
            aspectRatio: 367 / 109,
            child: ShimmerWidget(
              margin: AppConstants.cartItemMargin,
            ),
          ),
        ),
      ],
    );
  }
}
