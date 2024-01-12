part of 'on_boarding_cubit.dart';

abstract class OnBoardingState extends Equatable {
  const OnBoardingState();

  @override
  List<Object?> get props => [];
}

class OnBoardingInitial extends OnBoardingState {
  const OnBoardingInitial();
}

class PageViewIndexChanged extends OnBoardingState {
  final int index;

  const PageViewIndexChanged({required this.index});

  @override
  List<Object?> get props => [index];
}

class SkipToLogin extends OnBoardingState {
  const SkipToLogin();
}

class NavigateBetweenPages extends OnBoardingState {
  const NavigateBetweenPages();
}
