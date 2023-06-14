import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pi_network/utils/app_asset.dart';
import 'package:pi_network/utils/app_color.dart';
import 'package:pi_network/utils/app_string.dart';
import 'package:pi_network/widget/custom_text.dart';
import 'package:sizer/sizer.dart';

class PiButton extends StatelessWidget {
  final String? imageName;
  final String? name;
  const PiButton({Key? key,this.imageName,this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      // color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 20.w,
              width: 20.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black,width: 1)),
              child: Center(child: Image(image:   AssetImage(imageName??AssetUtils.piIcon),height: 12.w))),
          CustomText(
            top: 1.w,
            name:name??StringUtils.chat,
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            overflow: TextOverflow.ellipsis,
          )

        ],
      ),
    );

  }
}
