import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

enum OnboardingStateStatus {
  initial,
  lastPageView,
}

@freezed
class OnboardingState<T> with _$OnboardingState<T> {
  const factory OnboardingState({
    required OnboardingStateStatus status,
    @Default(false) bool isLastPage,
  }) = _OnboardingState;

  factory OnboardingState.initial() => const OnboardingState(
        status: OnboardingStateStatus.initial,
      );
}
