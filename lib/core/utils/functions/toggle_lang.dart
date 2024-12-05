import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_cubit.dart';

void toggleLang(BuildContext context) {
  if (context.locale == const Locale(AppStrings.englishLangCode)) {
    context.setLocale(const Locale(AppStrings.arabicLangCode));
  } else {
    context.setLocale(const Locale(AppStrings.englishLangCode));
  }
  context.read<ProfileCubit>().toggleLocale(context.locale.languageCode);
}
