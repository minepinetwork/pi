class ApiConstant {
  static const String basePath = "http://103.206.139.86:9098/";
  static const String registerApi = "auth/register?email=";
  static const String verifyOtp = "auth/verifyOTP?email=";
  static const String resendOtp = "auth/reSendOTP?email=";
  static const String forgotPassword = "auth/forgotPassword?email=";
  static const String verifyForgotPwdOTP = "auth/verifyForgotPwdOTP?email=";
  static const String setPassword = "auth/setPassword?email=";
  static const String purchaseTokens = "offer/purchase?offerId=";
  static const String getPurchaseTokens = "offer/puchase";
  static const String user = "user";
  static const String login = "auth/login?email=";
  static const String chooseProduct = "play/chooseProduct";
  static const String play = "play/start";
  static const String playPractice = "play/practice";
  static const String diffrence = "play/complete?totalDiffrence=7";
  static const String leaderBoard = "user/leaderBoardv2";
  static const String payment = "payment";
}