import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/button_loading_indicator.dart';
import 'package:store_ify/features/stores/presentation/cubits/food/food_stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/widgets/custom_stores_item.dart';

class FoodGridView extends StatelessWidget {
  const FoodGridView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodStoresCubit, FoodStoresState>(
      builder: (context, state) {
        if (state is GetFoodStoresSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GridView.builder(
              itemCount: state.food.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10),
              itemBuilder: (context, index) => CustomStoresItem(
                store: state.food[index],
              ),
            ),
          );
        } else if (state is GetFoodStoresError) {
          return showToast(text: state.error, state: ToastStates.error);
        } else {
          return const ButtonLoadingIndicator();
        }
      },
    );
  }
}
