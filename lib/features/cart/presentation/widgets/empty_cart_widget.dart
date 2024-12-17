import 'package:flutter/material.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/empty_widget.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomSliverAppBar(
          titleKey: LocaleKeys.cart,
          hasLeading: false,
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: EmptyWidget(
              imagePath: AppAssets.imagesEmptyCart,
              titleKey: LocaleKeys.putToYourCart,
              descriptionKey: LocaleKeys.putToYourCartToStartShopping),
        ),
      ],
    );
  }
}
