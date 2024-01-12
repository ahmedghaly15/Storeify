import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/cart/presentation/view/cart_view.dart';
import 'package:store_ify/features/favorite/presentation/view/favorite_view.dart';
import 'package:store_ify/features/home/presentation/view/home_view.dart';
import 'package:store_ify/features/layout/data/entities/change_index_params.dart';
import 'package:store_ify/features/layout/data/repositories/layout_repo.dart';
import 'package:store_ify/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:store_ify/features/stores/presentation/view/stores_view.dart';

class LayoutRepoImpl implements LayoutRepo {
  @override
  void changeBottomNav({required ChangeIndexParams params}) {
    BlocProvider.of<LayoutCubit>(params.context).currentIndex = params.index;
  }

  @override
  List<Widget> views() {
    return const <Widget>[
      HomeView(),
      StoresView(),
      CartView(),
      FavoriteView(),
    ];
  }

  @override
  List<BottomNavigationBarItem> getBottomNavItems() =>
      const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.storefront_sharp),
          label: "Stores",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favorite",
        ),
      ];
}
