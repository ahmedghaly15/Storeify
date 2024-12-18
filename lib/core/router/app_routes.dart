part of 'app_router.dart';

List<AutoRoute> get appRoutes => [
      AutoRoute(
        initial: isAndroidAbove12,
        page: SplashRoute.page,
      ),
      _buildCustomRoute(
        initial: (!isAndroidAbove12 && isOnboardingVisited),
        page: OnboardingRoute.page,
      ),
      AutoRoute(
        initial: (!isAndroidAbove12 && isOnboardingVisited && !isUserLoggedIn),
        page: AuthRoute.page,
        children: [
          _buildCustomRoute(
            initial: true,
            page: LoginRoute.page,
          ),
          _buildCustomRoute(page: RegisterRoute.page),
          _buildCustomRoute(page: ForgotPasswordRoute.page),
          _buildCustomRoute(page: VerificationRoute.page),
          _buildCustomRoute(page: ResetPasswordRoute.page),
        ],
      ),
      AutoRoute(
        page: LayoutRoute.page,
        children: [
          _buildCustomRoute(page: HomeRouteBody.page, initial: true),
          _buildCustomRoute(page: StoresRoute.page),
          _buildCustomRoute(page: CartRoute.page),
          _buildCustomRoute(page: FavoritesRoute.page),
        ],
      ),
      _buildCustomRoute(page: CategoriesRoute.page),
      _buildCustomRoute(page: SubCategoriesRoute.page),
      _buildCustomRoute(page: StoreDetailsRoute.page),
      _buildCustomRoute(page: CheckoutRoute.page),
      _buildCustomRoute(page: PaymentMethodRoute.page),
      _buildCustomRoute(page: PaymentRoute.page),
      _buildCustomRoute(page: PaymentSuccessfullyRoute.page),
      _buildCustomRoute(page: ProfileRoute.page),
      _buildCustomRoute(page: SearchRoute.page),
      _buildCustomRoute(page: ChangePasswordRoute.page),
      _buildCustomRoute(page: UpdateProfileRoute.page),
      _buildCustomRoute(page: ProductDetailsRoute.page),
    ];

CustomRoute _buildCustomRoute({
  bool initial = false,
  required PageInfo page,
  List<AutoRoute>? children,
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
      transitionsBuilder,
  int? durationInMilliseconds,
}) =>
    CustomRoute(
      initial: initial,
      page: page,
      transitionsBuilder: transitionsBuilder ?? TransitionsBuilders.fadeIn,
      durationInMilliseconds: durationInMilliseconds ?? 400,
      children: children,
    );
