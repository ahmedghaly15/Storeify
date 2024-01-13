import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/config/router/routes.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forget_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/sign_up/sign_up_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/verification/verification_cubit.dart';
import 'package:store_ify/features/auth/presentation/views/forgot_password_view.dart';
import 'package:store_ify/features/auth/presentation/views/login_view.dart';
import 'package:store_ify/features/auth/presentation/views/reset_password_view.dart';
import 'package:store_ify/features/auth/presentation/views/sign_up_view.dart';
import 'package:store_ify/features/auth/presentation/views/verification_view.dart';
import 'package:store_ify/features/categories/presentation/view/categories_view.dart';
import 'package:store_ify/features/entry/presentation/views/entry_view.dart';
import 'package:store_ify/features/layout/presentation/views/layout_view.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/on_boarding_cubit.dart';
import 'package:store_ify/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:store_ify/features/product_details/presentation/view/product_details_view.dart';
import 'package:store_ify/features/products/presentation/view/products_view.dart';
import 'package:store_ify/features/stores_details/presentation/view/stores_details_view.dart';
import 'package:store_ify/service_locator.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => const EntryView());

      case Routes.onBoardingViewRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt.get<OnBoardingCubit>(),
            child: const OnBoardingView(),
          ),
        );

      case Routes.loginViewRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt.get<LoginCubit>(),
            child: const LoginView(),
          ),
        );

      case Routes.signUpViewRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt.get<SignUpCubit>(),
            child: const SignUpView(),
          ),
        );

      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt.get<ForgotPasswordCubit>(),
            child: const ForgotPasswordView(),
          ),
        );

      case Routes.resetPasswordViewRoute:
        final args = routeSettings.arguments as String;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt.get<ResetPasswordCubit>(),
            child: ResetPasswordView(
              email: args,
            ),
          ),
        );

      case Routes.verificationViewRoute:
        final args = routeSettings.arguments as String;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt.get<VerificationCubit>(),
            child: VerificationView(
              email: args,
            ),
          ),
        );

      case Routes.storeifyLayoutViewRoute:
        return MaterialPageRoute(builder: (context) => const StoreIfyLayout());

      case Routes.categoriesViewRoute:
        return MaterialPageRoute(builder: (context) => const CategoriesView());

      case Routes.productsViewRoute:
        return MaterialPageRoute(builder: (context) => const ProductsView());

      case Routes.productDetailsViewRoute:
        return MaterialPageRoute(
          builder: (context) => const ProductDetailsView(),
        );

      case Routes.storesDetailsViewRoute:
        return MaterialPageRoute(
            builder: (context) => const StoresDetailsView());

      default:
        return _unFoundRoute();
    }
  }

  static Route<dynamic> _unFoundRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(
            "Un Found Route",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
