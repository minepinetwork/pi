import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pi_network/utils/routs/routs.dart';
import 'package:sizer/sizer.dart';
import 'utils/app_keybord.dart';
import 'dart:core';

Future<void> main() async {
//--->phone ado karo te view ne bandh krvo hoy to..

  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown
  // ]);

  runApp( const PiApp());
}

class PiApp extends StatelessWidget {

  const PiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'PiApp',
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.homePage,
          getPages: Routes.pages,
          builder: (context, child) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              drawerEnableOpenDragGesture: false,
              body:GestureDetector(
                  onTap: () {
                    KeyboardUtils.dismissKeyboard(context);
                  },
                  child: Container(
                    child: child,
                  )),
            );
          },
        );
      },
    );
  }
}


