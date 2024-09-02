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
/// [BottomNavBar]
class BottomNavBarRoute extends PageRouteInfo<void> {
  const BottomNavBarRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavBarRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BottomNavBar();
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
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HomeView());
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
/// [SignUpView]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SignUpView());
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
