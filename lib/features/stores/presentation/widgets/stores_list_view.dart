import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/stores/data/models/store.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_item_bloc_builder.dart';

class StoresListView extends StatelessWidget {
  const StoresListView({super.key, required this.stores});

  final List<Store> stores;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppConstants.categoryMargin,
      height: 25.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: AppConstants.categoryPadding,
        itemBuilder: (_, index) => StoreItemBlocBuilder(
          store: stores[index],
        ),
        separatorBuilder: (_, __) => MySizedBox.width8,
        itemCount: stores.length,
      ),
    );
  }
}
