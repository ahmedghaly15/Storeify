import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_attributes.freezed.dart';

@freezed
class OnboardingAttributes with _$OnboardingAttributes {
  const factory OnboardingAttributes({
    required String image,
    required String titleKey,
    required String subTitleKey,
  }) = _OnboardingAttributes;
}
