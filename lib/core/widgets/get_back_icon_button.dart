import 'package:flutter/material.dart';
import 'package:store_ify/core/utils/app_navigator.dart';

class GetBackIconButton extends StatelessWidget {
  const GetBackIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.back(),
      icon: Icon(
        Icons.arrow_back,
        color: const Color(0xff525252).withOpacity(0.58),
      ),
    );
  }
}
