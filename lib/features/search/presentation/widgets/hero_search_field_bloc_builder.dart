import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/features/search/presentation/cubit/search_cubit.dart';
import 'package:store_ify/features/search/presentation/cubit/search_state.dart';
import 'package:store_ify/features/search/presentation/widgets/custom_search_text_field.dart';

class HeroSearchFieldBlocBuilder extends StatelessWidget {
  const HeroSearchFieldBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (_, current) => current is UpdateSearchText,
      builder: (context, state) => Hero(
        tag: LangKeys.search,
        child: Material(
          color: Colors.transparent,
          child: CustomSearchTextField(
            autofocus: true,
            controller: context.read<SearchCubit>().searchController,
            onChanged: (newText) =>
                context.read<SearchCubit>().debouncedSearch(newText),
          ),
        ),
      ),
    );
  }
}
