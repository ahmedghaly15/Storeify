import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/layout/data/entities/change_index_params.dart';
import 'package:store_ify/features/layout/data/repositories/layout_repo.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  final LayoutRepo layoutRepo;

  LayoutCubit({required this.layoutRepo}) : super(LayoutInitial());

  int currentIndex = 0;

  void changeBottomNav({required ChangeIndexParams params}) {
    layoutRepo.changeBottomNav(params: params);
    emit(ChangeBottomNavState(currentIndex));
  }

  List<Widget> views() => layoutRepo.views();

  List<BottomNavigationBarItem> bottomNavItems() =>
      layoutRepo.getBottomNavItems();
}
