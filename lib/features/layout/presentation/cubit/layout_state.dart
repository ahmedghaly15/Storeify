part of 'layout_cubit.dart';

abstract class LayoutState {}

class LayoutInitial extends LayoutState {}

class ChangeBottomNavState extends LayoutState {
  final int index;

  ChangeBottomNavState(this.index);
}
