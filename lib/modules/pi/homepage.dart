import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pi_network/utils/app_asset.dart';
import 'package:pi_network/utils/app_color.dart';
import 'package:pi_network/utils/routs/routs.dart';
import 'package:pi_network/widget/custom_text.dart';
import '../../utils/app_string.dart';
import 'package:sizer/sizer.dart';

import '../../widget/pi_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                      image: const AssetImage(AssetUtils.piIcon), height: 39.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                          textAlign: TextAlign.center,
                          name: StringUtils.welcome,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400),
                      CustomText(
                          textAlign: TextAlign.center,
                          name: StringUtils.pi,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w900),
                      CustomText(
                          left: 1.w,
                          textAlign: TextAlign.center,
                          name: StringUtils.browser,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ],
                  ),

                  /// button part----------------->
                  Container(
                    height: Get.height / 1.7,
                    // color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            const PiButton(
                                name: StringUtils.chat,
                                imageName: AssetUtils.piIcon),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.wallet);
                              },
                              child: const PiButton(
                                  imageName: AssetUtils.piIcon,
                                  name: StringUtils.wallet),
                            ),
                            const PiButton(
                                name: StringUtils.brainStrom,
                                imageName: AssetUtils.piIcon),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            PiButton(
                                name: StringUtils.mine,
                                imageName: AssetUtils.piIcon),
                            PiButton(
                                imageName: AssetUtils.piIcon,
                                name: StringUtils.blockchain),
                            PiButton(
                                name: StringUtils.develop,
                                imageName: AssetUtils.piIcon),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const PiButton(
                                name: StringUtils.kyc,
                                imageName: AssetUtils.piIcon),
                            const PiButton(
                                imageName: AssetUtils.piIcon,
                                name: StringUtils.fireside),
                            SizedBox(
                              height: 20.w,
                              width: 20.w,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  ///last button part----------------->
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.purple,
                    ),
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Icon(Icons.account_balance,color: Colors.white,size: 5.w),
                          CustomText(
                              left: 2.w,
                              textAlign: TextAlign.center,
                              name: StringUtils.explore,
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
