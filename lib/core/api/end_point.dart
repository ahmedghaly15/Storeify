class EndPoints {
  static const String baseUrl = "https://store-ify.vercel.app/";
  static const String auth = '${baseUrl}auth/';
  static const String login = "${auth}login";
  static const String register = "${auth}signup";
  static const String forgetPassword = "${auth}forgetPassword";
  static const String verifyCode = "${auth}CheckCode";
  static const String resetPassword = "${auth}RestePassword";
  static const String loginWithGoogle = "${auth}loginWithGmail";
  static const String category = "${baseUrl}category";
  static const String store = "${baseUrl}Store";
  static const String storeType = "${baseUrl}Store/type/";
  static const String clothesStores = "${storeType}Clothes";
  static const String foodStores = "${storeType}Food";
}

const String token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NTQ3OTZkMzAzZGM0YjlhNzlkNGRjYjMiLCJyb2xlIjoiVXNlciIsImlhdCI6MTY5OTI1NzYxNywiZXhwIjoxNjk5MjU5NDE3fQ.4zq5NchbgNoUo9eV-RFZ91YYacKn_M5ywxyseehu_Ko";
