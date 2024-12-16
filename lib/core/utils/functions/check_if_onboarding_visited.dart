import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/cache_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';

Future<void> checkIfOnboardingIsVisited() async {
  final onboarding = await SharedPrefHelper.getBool(CacheKeys.onboarding);
  if (onboarding != null) {
    isOnboardingVisited = onboarding;
  } else {
    isOnboardingVisited = false;
  }
}
