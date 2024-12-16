// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [Auth]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const Auth();
    },
  );
}

/// generated route for
/// [CartView]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const CartView());
    },
  );
}

/// generated route for
/// [CategoriesView]
class CategoriesRoute extends PageRouteInfo<void> {
  const CategoriesRoute({List<PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const CategoriesView());
    },
  );
}

/// generated route for
/// [ChangePasswordView]
class ChangePasswordRoute extends PageRouteInfo<void> {
  const ChangePasswordRoute({List<PageRouteInfo>? children})
      : super(
          ChangePasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ChangePasswordView());
    },
  );
}

/// generated route for
/// [CheckoutView]
class CheckoutRoute extends PageRouteInfo<CheckoutRouteArgs> {
  CheckoutRoute({
    Key? key,
    required double amount,
    List<PageRouteInfo>? children,
  }) : super(
          CheckoutRoute.name,
          args: CheckoutRouteArgs(
            key: key,
            amount: amount,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CheckoutRouteArgs>();
      return WrappedRoute(
          child: CheckoutView(
        key: args.key,
        amount: args.amount,
      ));
    },
  );
}

class CheckoutRouteArgs {
  const CheckoutRouteArgs({
    this.key,
    required this.amount,
  });

  final Key? key;

  final double amount;

  @override
  String toString() {
    return 'CheckoutRouteArgs{key: $key, amount: $amount}';
  }
}

/// generated route for
/// [FavoritesView]
class FavoritesRoute extends PageRouteInfo<void> {
  const FavoritesRoute({List<PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const FavoritesView());
    },
  );
}

/// generated route for
/// [ForgotPasswordView]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ForgotPasswordView());
    },
  );
}

/// generated route for
/// [HomeViewBody]
class HomeRouteBody extends PageRouteInfo<void> {
  const HomeRouteBody({List<PageRouteInfo>? children})
      : super(
          HomeRouteBody.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteBody';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeViewBody();
    },
  );
}

/// generated route for
/// [LayoutView]
class LayoutRoute extends PageRouteInfo<void> {
  const LayoutRoute({List<PageRouteInfo>? children})
      : super(
          LayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'LayoutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LayoutView();
    },
  );
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const LoginView());
    },
  );
}

/// generated route for
/// [OnboardingView]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const OnboardingView());
    },
  );
}

/// generated route for
/// [PaymentMethodView]
class PaymentMethodRoute extends PageRouteInfo<PaymentMethodRouteArgs> {
  PaymentMethodRoute({
    Key? key,
    required double amount,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentMethodRoute.name,
          args: PaymentMethodRouteArgs(
            key: key,
            amount: amount,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentMethodRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentMethodRouteArgs>();
      return WrappedRoute(
          child: PaymentMethodView(
        key: args.key,
        amount: args.amount,
      ));
    },
  );
}

class PaymentMethodRouteArgs {
  const PaymentMethodRouteArgs({
    this.key,
    required this.amount,
  });

  final Key? key;

  final double amount;

  @override
  String toString() {
    return 'PaymentMethodRouteArgs{key: $key, amount: $amount}';
  }
}

/// generated route for
/// [PaymentSuccessfullyView]
class PaymentSuccessfullyRoute extends PageRouteInfo<void> {
  const PaymentSuccessfullyRoute({List<PageRouteInfo>? children})
      : super(
          PaymentSuccessfullyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentSuccessfullyRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PaymentSuccessfullyView();
    },
  );
}

/// generated route for
/// [PaymentView]
class PaymentRoute extends PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    Key? key,
    required double amount,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            amount: amount,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentRouteArgs>();
      return WrappedRoute(
          child: PaymentView(
        key: args.key,
        amount: args.amount,
      ));
    },
  );
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    required this.amount,
  });

  final Key? key;

  final double amount;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, amount: $amount}';
  }
}

/// generated route for
/// [ProductDetailsView]
class ProductDetailsRoute extends PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    Key? key,
    required Product product,
    List<PageRouteInfo>? children,
  }) : super(
          ProductDetailsRoute.name,
          args: ProductDetailsRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailsRouteArgs>();
      return WrappedRoute(
          child: ProductDetailsView(
        key: args.key,
        product: args.product,
      ));
    },
  );
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    this.key,
    required this.product,
  });

  final Key? key;

  final Product product;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [ProfileView]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ProfileView());
    },
  );
}

/// generated route for
/// [RegisterView]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const RegisterView());
    },
  );
}

/// generated route for
/// [ResetPasswordView]
class ResetPasswordRoute extends PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    Key? key,
    required String email,
    List<PageRouteInfo>? children,
  }) : super(
          ResetPasswordRoute.name,
          args: ResetPasswordRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResetPasswordRouteArgs>();
      return WrappedRoute(
          child: ResetPasswordView(
        key: args.key,
        email: args.email,
      ));
    },
  );
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({
    this.key,
    required this.email,
  });

  final Key? key;

  final String email;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [SearchView]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SearchView());
    },
  );
}

/// generated route for
/// [SplashView]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashView();
    },
  );
}

/// generated route for
/// [StoreDetailsView]
class StoreDetailsRoute extends PageRouteInfo<StoreDetailsRouteArgs> {
  StoreDetailsRoute({
    Key? key,
    required Store store,
    List<PageRouteInfo>? children,
  }) : super(
          StoreDetailsRoute.name,
          args: StoreDetailsRouteArgs(
            key: key,
            store: store,
          ),
          initialChildren: children,
        );

  static const String name = 'StoreDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StoreDetailsRouteArgs>();
      return WrappedRoute(
          child: StoreDetailsView(
        key: args.key,
        store: args.store,
      ));
    },
  );
}

class StoreDetailsRouteArgs {
  const StoreDetailsRouteArgs({
    this.key,
    required this.store,
  });

  final Key? key;

  final Store store;

  @override
  String toString() {
    return 'StoreDetailsRouteArgs{key: $key, store: $store}';
  }
}

/// generated route for
/// [StoresView]
class StoresRoute extends PageRouteInfo<void> {
  const StoresRoute({List<PageRouteInfo>? children})
      : super(
          StoresRoute.name,
          initialChildren: children,
        );

  static const String name = 'StoresRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const StoresView());
    },
  );
}

/// generated route for
/// [SubCategoriesView]
class SubCategoriesRoute extends PageRouteInfo<SubCategoriesRouteArgs> {
  SubCategoriesRoute({
    Key? key,
    required Category category,
    List<PageRouteInfo>? children,
  }) : super(
          SubCategoriesRoute.name,
          args: SubCategoriesRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'SubCategoriesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SubCategoriesRouteArgs>();
      return WrappedRoute(
          child: SubCategoriesView(
        key: args.key,
        category: args.category,
      ));
    },
  );
}

class SubCategoriesRouteArgs {
  const SubCategoriesRouteArgs({
    this.key,
    required this.category,
  });

  final Key? key;

  final Category category;

  @override
  String toString() {
    return 'SubCategoriesRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [UpdateProfileView]
class UpdateProfileRoute extends PageRouteInfo<void> {
  const UpdateProfileRoute({List<PageRouteInfo>? children})
      : super(
          UpdateProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const UpdateProfileView());
    },
  );
}

/// generated route for
/// [VerificationView]
class VerificationRoute extends PageRouteInfo<VerificationRouteArgs> {
  VerificationRoute({
    Key? key,
    required String email,
    List<PageRouteInfo>? children,
  }) : super(
          VerificationRoute.name,
          args: VerificationRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerificationRouteArgs>();
      return WrappedRoute(
          child: VerificationView(
        key: args.key,
        email: args.email,
      ));
    },
  );
}

class VerificationRouteArgs {
  const VerificationRouteArgs({
    this.key,
    required this.email,
  });

  final Key? key;

  final String email;

  @override
  String toString() {
    return 'VerificationRouteArgs{key: $key, email: $email}';
  }
}
