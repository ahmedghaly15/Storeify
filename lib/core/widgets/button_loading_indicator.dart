import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_indicator/loading_indicator.dart';

class ButtonLoadingIndicator extends StatelessWidget {
  const ButtonLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return LoadingIndicator(
      indicatorType: Indicator.ballPulse,
      colors: const <Color>[
        Colors.white,
        Color(0xffE0E0E0),
        Color(0xffF5F5F5),
      ],
      strokeWidth: 5.w,
    );
  }
}
