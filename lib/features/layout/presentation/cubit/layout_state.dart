part of 'layout_cubit.dart';

abstract class LayoutState extends Equatable {
  const LayoutState();

  @override
  List<Object?> get props => [];
}

class LayoutInitial extends LayoutState {
  const LayoutInitial();
}

class ChangeBottomNav extends LayoutState {
  final int index;

  const ChangeBottomNav(this.index);
}

class GetUserLoading extends LayoutState {
  const GetUserLoading();
}

class GetUserSuccess extends LayoutState {
  final User user;

  const GetUserSuccess({required this.user});

  @override
  List<Object?> get props => [user];
}

class GetUserError extends LayoutState {
  final String error;

  const GetUserError({required this.error});

  @override
  List<Object?> get props => [error];
}
