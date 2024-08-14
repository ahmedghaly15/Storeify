import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/features/categories/data/models/category.dart';
import 'package:store_ify/features/categories/presentation/widgets/category_item.dart';
import 'package:store_ify/features/home/presentation/widgets/horizontal_separated_list_view.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key, required this.categories});

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 166.h,
      child: HorizontalSeparatedListView(
        itemBuilder: (_, index) => CategoryItem(category: categories[index]),
        itemCount: categories.length,
      ),
    );
  }
}
