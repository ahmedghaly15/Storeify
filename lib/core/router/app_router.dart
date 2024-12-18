import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/models/product.dart';

import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/auth/presentation/views/forgot_password_view.dart';
import 'package:store_ify/features/auth/presentation/views/login_view.dart';
import 'package:store_ify/features/auth/presentation/views/register_view.dart';
import 'package:store_ify/features/auth/presentation/views/reset_password_view.dart';
import 'package:store_ify/features/auth/presentation/views/verification_view.dart';
import 'package:store_ify/features/cart/presentation/views/cart_view.dart';
import 'package:store_ify/features/categories/data/models/category.dart';
import 'package:store_ify/features/categories/presentation/view/categories_view.dart';
import 'package:store_ify/features/categories/presentation/view/sub_categories_view.dart';
import 'package:store_ify/features/checkout/presentation/views/checkout_view.dart';
import 'package:store_ify/features/checkout/presentation/views/payment_method_view.dart';
import 'package:store_ify/features/favorites/presentation/views/favorites_view.dart';
import 'package:store_ify/features/home/presentation/widgets/home_view_body.dart';
import 'package:store_ify/features/layout/presentation/views/layout_view.dart';
import 'package:store_ify/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:store_ify/features/payment/presentation/views/payment_successfully_view.dart';
import 'package:store_ify/features/payment/presentation/views/payment_view.dart';
import 'package:store_ify/features/product_details/presentation/views/product_details_view.dart';
import 'package:store_ify/features/profile/presentation/views/change_password_view.dart';
import 'package:store_ify/features/profile/presentation/views/profile_view.dart';
import 'package:store_ify/features/profile/presentation/views/update_profile_view.dart';
import 'package:store_ify/features/search/presentation/views/search_view.dart';
import 'package:store_ify/features/splash/presentation/views/splash_view.dart';
import 'package:store_ify/core/models/store.dart';
import 'package:store_ify/features/stores/presentation/view/store_details_view.dart';
import 'package:store_ify/features/stores/presentation/view/stores_view.dart';

part 'app_router.gr.dart';
part 'app_routes.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => appRoutes;
}

@RoutePage(name: 'AuthRoute')
class Auth extends AutoRouter {
  const Auth({super.key});
}
