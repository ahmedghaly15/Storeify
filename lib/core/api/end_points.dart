class EndPoints {
  EndPoints._();

  // static const String baseUrl = 'https://store-ify.000webhostapp.com/api/';
  static const String baseUrl = 'http://192.168.1.6:8081/api/';
  static const String login = 'login';
  static const String register = 'register';
  static const String forgotPassword = 'forget-password';
  static const String validateOtp = 'validate-otp';
  static const String resetPassword = 'reset-password';
  static const String fetchHomeData = 'home';
  static const String fetchCategories = 'categories';
  static const String stores = 'stores/';
  static const String fetchStoreBranches = '${stores}branches/';
  static const String fetchStoreCategories = '${stores}category/';
  static const String fetchStoreOffers = '${stores}offer/';
  static const String favorites = 'favorites/';
  static const String favoriteStores = 'favoritesStore/';
  static const String addProductToCart = 'addProduct/';
  static const String cart = 'cart/';
  static const String checkout = 'checkout';
  static const String pay = 'pay/';
  static const String changeLang = 'change-lang/';
  static const String logout = 'logout/';
  static const String profile = 'profile/';
  static const String changePassword = '${profile}change-password';
  static const String search = 'search';
  static const String updateProfile = '${profile}update';
}
