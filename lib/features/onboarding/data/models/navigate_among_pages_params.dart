import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigate_among_pages_params.freezed.dart';

@freezed
class NavigateAmongPagesParams with _$NavigateAmongPagesParams {
  const factory NavigateAmongPagesParams({
    required BuildContext context,
    required PageController pageController,
    bool? isLastBoarding,
  }) = _NavigateAmongPagesParams;
}
