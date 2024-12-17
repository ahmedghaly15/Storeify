import 'package:flutter/material.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/empty_widget.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class EmptySubCategoryView extends StatelessWidget {
  const EmptySubCategoryView({
    super.key,
    required this.appBarTitleText,
  });

  final String appBarTitleText;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CustomSliverAppBar(titleText: appBarTitleText),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: EmptyWidget(
            titleKey: LocaleKeys.emptySubCategories,
            descriptionKey: LocaleKeys.emptySubCategoriesDescription,
          ),
        ),
      ],
    );
  }
}
