import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState<T> with _$OnboardingState<T> {
  const factory OnboardingState.initial() = _Initial;
  const factory OnboardingState.pageViewIndexChanged(int index) =
      PageViewIndexChanged<T>;
}
