import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/features/search/presentation/cubit/search_cubit.dart';
import 'package:store_ify/features/search/presentation/cubit/search_state.dart';

class SearchDataTitleBlocBuilder extends StatelessWidget {
  const SearchDataTitleBlocBuilder({
    super.key,
    required this.titleKey,
  });

  final String titleKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case SearchStateStatus.searchLoading ||
                SearchStateStatus.searchSuccess:
            return const SliverToBoxAdapter(
              child: SizedBox.shrink(),
            );
          case SearchStateStatus.fetchSearchDataSuccess:
            return SliverToBoxAdapter(
              child: SearchDataTitle(titleKey: titleKey),
            );
          case SearchStateStatus.searchError:
            return SliverToBoxAdapter(
              child: state.error == AppStrings.searchRequiredErrorKey
                  ? SearchDataTitle(titleKey: titleKey)
                  : const SizedBox.shrink(),
            );
          default:
            return const SliverToBoxAdapter(
              child: SizedBox.shrink(),
            );
        }
      },
    );
  }

  bool _buildWhen(SearchStateStatus status) {
    return status == SearchStateStatus.fetchSearchDataSuccess ||
        status == SearchStateStatus.searchSuccess ||
        status == SearchStateStatus.searchLoading ||
        status == SearchStateStatus.searchError;
  }
}

class SearchDataTitle extends StatelessWidget {
  const SearchDataTitle({
    super.key,
    required this.titleKey,
  });

  final String titleKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 12.h,
      ),
      child: Text(
        context.tr(titleKey),
        style: AppTextStyles.textStyle16Regular,
      ),
    );
  }
}
