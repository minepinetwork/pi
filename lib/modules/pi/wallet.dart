import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pi_network/modules/pi/pi_controller/pi_controller.dart';
import 'package:pi_network/utils/app_color.dart';
import 'package:pi_network/utils/app_string.dart';
import 'package:pi_network/widget/custom_text.dart';
import 'package:pi_network/widget/custom_textfield.dart';
import 'package:sizer/sizer.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  PiController piController = Get.put(PiController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    piController.isWallet.value = true;
    Future.delayed(const Duration(seconds: 3)).then((value) {
      setState(() {
        piController.isWallet.value = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: piController.isWallet.value? Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
          ),
          CustomText(
              top: 2.h,
              textAlign: TextAlign.center,
              name: StringUtils.loading,
              fontSize: 15.sp,
              color: Colors.purple,
              fontWeight: FontWeight.w400),
        ],
      )):
      SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                    top: 8.w,
                    bottom: 8.w,
                    textAlign: TextAlign.center,
                    name: StringUtils.unlockPi,
                    fontSize: 15.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
               Padding(
                 padding:  EdgeInsets.symmetric(horizontal:12.w),
                 child: const CustomTextField(
                   maxLines: 7,
                   fillColor: Colors.transparent,
                     hintText: StringUtils.enter,
                 ),
               ),
                ///last button part----------------->
                Container(
                  margin:
                  EdgeInsets.symmetric(horizontal: 9.w, vertical: 6.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.purple,
                  ),
                  height: 5.h,
                  width: double.infinity,
                  child: Center(
                    child: CustomText(
                        left: 2.w,
                        textAlign: TextAlign.center,
                        name: StringUtils.unlock,
                        fontSize: 13.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Row(
                  children: [
                    CustomText(
                      left: 3.w,
                        top: 8.w,
                        bottom: 8.w,
                        textAlign: TextAlign.center,
                        name: "tari rite text lakhi nakhje....",
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ],
                ),
          ]),
        ),
      )
      ,
    );
  }
}
