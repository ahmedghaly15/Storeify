import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/button_loading_indicator.dart';
import 'package:store_ify/core/widgets/try_again_button.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';
import 'package:store_ify/features/home/presentation/widgets/custom_horizontal_list.dart';
import 'package:store_ify/features/stores/presentation/widgets/custom_stores_item.dart';

class StoresListView extends StatelessWidget {
  const StoresListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoresCubit, StoresState>(
      builder: (context, state) {
        if (state is GetStoresSuccess) {
          return SizedBox(
            height: 166.h,
            child: CustomHorizontalList(
              itemBuilder: (context, index) => CustomStoresItem(
                storesModel: state.stores[index],
              ),
            ),
          );
        }
        if (state is GetStoresError) {
          return TryAgainButton(
            onPressed: () => BlocProvider.of<StoresCubit>(context).getStores(),
          );
        } else {
          return const ButtonLoadingIndicator();
        }
      },
    );
  }
}
