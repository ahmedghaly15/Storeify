import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class GetBackIconButton extends StatelessWidget {
  const GetBackIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.maybePop(),
      icon: Icon(
        Icons.arrow_back,
        color: const Color(0xff525252).withOpacity(0.58),
      ),
    );
  }
}
