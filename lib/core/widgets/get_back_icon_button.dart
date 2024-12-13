import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class GetBackIconButton extends StatelessWidget {
  const GetBackIconButton({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap ?? () => context.maybePop(),
      icon: const Icon(Icons.arrow_back),
    );
  }
}
