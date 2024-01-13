import 'package:flutter/material.dart';
import 'package:store_ify/core/widgets/main_button.dart';

class TryAgainButton extends StatelessWidget {
  const TryAgainButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MainButton(
        onPressed: onPressed,
        text: 'Try again',
      ),
    );
  }
}
