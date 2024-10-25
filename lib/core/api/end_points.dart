class EndPoints {
  EndPoints._();

  // static const String baseUrl = 'https://store-ify.000webhostapp.com/api/';
  static const String baseUrl = 'http://192.168.1.10:8081/api/';
  static const String login = '${baseUrl}login';
  static const String register = '${baseUrl}register';
  static const String forgotPassword = '${baseUrl}forget-password';
  static const String validateOtp = '${baseUrl}validate-otp';
  static const String resetPassword = '${baseUrl}reset-password';
  static const String fetchHomeData = '${baseUrl}home';
  static const String fetchCategories = '${baseUrl}categories';
  static const String fetchStores = '${baseUrl}stores';
  static const String fetchStoreBranches = '${baseUrl}stores/branches/';
  static const String fetchStoreCategories = '${baseUrl}stores/category/';
  static const String fetchStoreOffers = '${baseUrl}stores/offer/';
  static const String favorites = '${baseUrl}favorites/';
  static const String favoriteStores = '${baseUrl}favoritesStore/';
  static const String addProductToCart = '${baseUrl}addProduct/';
  static const String cart = '${baseUrl}cart/';
  static const String checkout = '${baseUrl}checkout';
  static const String pay = '${baseUrl}pay/';
  static const String changeLang = '${baseUrl}change-lang/';
  static const String logout = '${baseUrl}logout/';
  static const String search = '${baseUrl}search';
}
