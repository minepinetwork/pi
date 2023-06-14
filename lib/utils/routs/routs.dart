import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:pi_network/modules/pi/homepage.dart';
import 'package:pi_network/modules/pi/wallet.dart';

class Routes {
  static const defaultTransition = Transition.rightToLeft;
  static String homePage = '/homePage';
  static String wallet = '/wallet';

  static List<GetPage<dynamic>> pages = [

    GetPage(name: Routes.homePage, page: () => HomePage(),transition: defaultTransition,),
    GetPage(name: Routes.wallet, page: () => Wallet(),transition: defaultTransition,),
  ];
}



