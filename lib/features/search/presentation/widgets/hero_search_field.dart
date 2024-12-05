import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/features/search/presentation/cubit/search_cubit.dart';
import 'package:store_ify/features/search/presentation/widgets/custom_search_text_field.dart';

class HeroSearchField extends StatelessWidget {
  const HeroSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: LocaleKeys.search,
      child: Material(
        color: Colors.transparent,
        child: CustomSearchTextField(
          autofocus: true,
          onChanged: (newText) =>
              context.read<SearchCubit>().debouncedSearch(newText),
        ),
      ),
    );
  }
}
