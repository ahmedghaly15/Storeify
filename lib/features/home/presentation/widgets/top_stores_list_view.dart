import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/features/home/data/models/store.dart';
import 'package:store_ify/features/home/presentation/widgets/horizontal_separated_list_view.dart';
import 'package:store_ify/features/stores/presentation/widgets/stores_item.dart';

class TopStoresListView extends StatelessWidget {
  const TopStoresListView({super.key, required this.topStores});

  final List<Store> topStores;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175.h,
      child: HorizontalSeparatedListView(
        itemBuilder: (_, index) => StoreItem(store: topStores[index]),
        itemCount: topStores.length,
      ),
    );
  }
}
