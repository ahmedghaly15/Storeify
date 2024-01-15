import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/api/api_consumer.dart';
import 'package:store_ify/core/api/end_point.dart';
import 'package:store_ify/core/errors/failures.dart';
import 'package:store_ify/core/helpers/helper.dart';
import 'package:store_ify/core/models/user.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/cart/presentation/view/cart_view.dart';
import 'package:store_ify/features/favorite/presentation/view/favorite_view.dart';
import 'package:store_ify/features/home/presentation/view/home_view.dart';
import 'package:store_ify/features/layout/data/entities/change_index_params.dart';
import 'package:store_ify/features/layout/data/repositories/layout_repo.dart';
import 'package:store_ify/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:store_ify/features/stores/presentation/view/stores_view.dart';

class LayoutRepoImpl implements LayoutRepo {
  final ApiConsumer apiConsumer;

  const LayoutRepoImpl({required this.apiConsumer});

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

  @override
  Future<Either<Failure, User>> getUser() {
    return executeAndHandleErrors<User>(
      function: () async {
        final response =
            await apiConsumer.get('${EndPoints.getUser}${Helper.uId}');

        final User user = User.fromJson(response['user']);

        return user;
      },
    );
  }
}
