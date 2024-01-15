import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/helper.dart';
import 'package:store_ify/core/models/user.dart';
import 'package:store_ify/features/layout/data/entities/change_index_params.dart';
import 'package:store_ify/features/layout/data/repositories/layout_repo.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  final LayoutRepo layoutRepo;

  LayoutCubit({
    required this.layoutRepo,
  }) : super(const LayoutInitial());

  int currentIndex = 0;

  void changeBottomNav({required ChangeIndexParams params}) {
    layoutRepo.changeBottomNav(params: params);
    emit(ChangeBottomNav(index: currentIndex));
  }

  List<Widget> views() => layoutRepo.views();

  List<BottomNavigationBarItem> bottomNavItems() =>
      layoutRepo.getBottomNavItems();

  Future<void> getUser() async {
    emit(const GetUserLoading());

    layoutRepo.getUser().then((value) {
      value.fold(
        (failure) => emit(GetUserError(error: failure.errMessage.toString())),
        (user) {
          Helper.currentUser = user;
          emit(GetUserSuccess(user: user));
        },
      );
    });
  }
}
