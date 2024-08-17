part of 'app_router.dart';

List<AutoRoute> get appRoutes => [
      AutoRoute(
        initial: isUserLoggedIn ? false : true,
        page: AuthRoute.page,
        children: [
          _buildCustomRoute(
            initial: true,
            page: LoginRoute.page,
          ),
          _buildCustomRoute(page: SignUpRoute.page),
          _buildCustomRoute(page: ForgotPasswordRoute.page),
          _buildCustomRoute(page: VerificationRoute.page),
          _buildCustomRoute(page: ResetPasswordRoute.page),
        ],
      ),
      AutoRoute(
        page: BottomNavBarRoute.page,
        initial: isUserLoggedIn ? true : false,
        children: [
          AutoRoute(
            page: LayoutRoute.page,
            initial: true,
            children: [
              _buildCustomRoute(page: HomeRoute.page, initial: true),
              _buildCustomRoute(page: StoresRoute.page),
              _buildCustomRoute(page: HomeRoute.page),
              _buildCustomRoute(page: HomeRoute.page),
              // _buildCustomRoute(page: CartRoute.page),
            ],
          ),
        ],
      ),
      _buildCustomRoute(page: CategoriesRoute.page),
      _buildCustomRoute(page: SubCategoriesRoute.page),
    ];

CustomRoute _buildCustomRoute({
  bool initial = false,
  required PageInfo<dynamic> page,
  List<AutoRoute>? children,
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
      transitionsBuilder,
  int? durationInMilliseconds,
}) {
  return CustomRoute(
    initial: initial,
    page: page,
    transitionsBuilder: transitionsBuilder ?? AppUtils.transitionsBuilder,
    durationInMilliseconds:
        durationInMilliseconds ?? AppUtils.transitionDuration,
    children: children,
  );
}
