// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:store_ify/core/locale/logic/cubit/locale_cubit.dart';
// import 'package:store_ify/core/locale/logic/cubit/locale_state.dart';
// import 'package:store_ify/core/widgets/custom_adaptive_switch.dart';
// import 'package:store_ify/core/widgets/custom_toast.dart';

// class LanguageSwitchBlocConsumer extends StatelessWidget {
//   const LanguageSwitchBlocConsumer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final localeCubit = context.read<LocaleCubit>();
//     return BlocConsumer<LocaleCubit, LocaleState>(
//       listenWhen: (_, current) => _listenWhen(current),
//       listener: (context, state) => _localeCubitListener(state, context),
//       buildWhen: (previous, current) => previous.locale != current.locale,
//       builder: (context, state) => CustomAdaptiveSwitch(
//         value: localeCubit.isArabic ? true : false,
//         onChanged: (_) => localeCubit.toggleLocale(),
//       ),
//     );
//   }

//   bool _listenWhen(LocaleState<dynamic> current) {
//     return current.status == LocaleStateStatus.changeLocaleLocally ||
//         current.status == LocaleStateStatus.changeApiLocaleFailure;
//   }

//   void _localeCubitListener(LocaleState<dynamic> state, BuildContext context) {
//     switch (state.status) {
//       case LocaleStateStatus.changeLocaleLocally:
//         // context.read<LocaleCubit>().changeApiLang(state.locale.languageCode);
//         context.maybePop();
//         break;

//       case LocaleStateStatus.changeApiLocaleFailure:
//         CustomToast.showToast(
//           context: context,
//           messageKey: state.error ?? '',
//           state: CustomToastState.error,
//         );
//         break;

//       default:
//         break;
//     }
//   }
// }
