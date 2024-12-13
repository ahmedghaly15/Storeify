import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_cubit.dart';

void toggleLang(BuildContext context) {
  final newLocale = context.locale.languageCode == AppStrings.englishLangCode
      ? const Locale(AppStrings.arabicLangCode)
      : const Locale(AppStrings.englishLangCode);

  context.setLocale(newLocale);
  context.read<ProfileCubit>().toggleLocale(newLocale.languageCode);
}
