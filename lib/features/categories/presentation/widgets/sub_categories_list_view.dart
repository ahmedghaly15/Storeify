import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/categories/data/models/category.dart';
import 'package:store_ify/features/categories/presentation/widgets/sub_category_item_bloc_builder.dart';

class SubCategoriesListView extends StatelessWidget {
  const SubCategoriesListView({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 29.h, bottom: 19.h),
      height: 25.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
        itemCount: category.subCategories!.length,
        itemBuilder: (_, index) => SubCategoryItemBlocBuilder(
          category: category,
          index: index,
        ),
        separatorBuilder: (_, __) => MySizedBox.width8,
      ),
    );
  }
}
