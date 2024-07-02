import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/button_loading_indicator.dart';
import 'package:store_ify/features/stores/presentation/cubits/clothes/clothes_stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/widgets/custom_stores_item.dart';

class ClothesGridView extends StatelessWidget {
  const ClothesGridView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClothesStoresCubit, ClothesStoresState>(
      builder: (context, state) {
        if (state is GetClothesStoresSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GridView.builder(
              itemCount: state.clothesStores.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10),
              itemBuilder: (context, index) => CustomStoresItem(
                store: state.clothesStores[index],
              ),
            ),
          );
        } else if (state is GetClothesStoresError) {
          return showToast(text: state.error, state: ToastStates.error);
        } else {
          return const ButtonLoadingIndicator();
        }
      },
    );
  }
}
