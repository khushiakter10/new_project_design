import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khusi/gen/colors.gen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../helpers/ui_helpers.dart';

class Shamoscreen extends StatefulWidget {
  const Shamoscreen({super.key});

  @override
  State<Shamoscreen> createState() => _ShamoscreenState();
}

class _ShamoscreenState extends State<Shamoscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: Container(
        height: 500.h, // Takes up full screen height
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.roket1.path),
            fit: BoxFit.none,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(20.h),
              Row(
                children: [
                  Image.asset(Assets.icons.back.path),
                  UIHelper.horizontalSpace(20.w),
                  Text("BACK", style: TextFontStyle.cFFFFFFw100),
                  UIHelper.horizontalSpace(50.w),
                  Image.asset(
                    Assets.icons.camexl.path,
                    height: 13.h,
                  ),
                  Spacer(),
                  Image.asset(
                    Assets.icons.oval1.path,
                    height: 35.h,
                  ),
                ],
              ),
              UIHelper.verticalSpace(10.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    Text("100 Essential",
                        style: TextFontStyle.cFFFFFFw700poppins),
                    Text("Grammar", style: TextFontStyle.cFFFFFFw700poppins),
                  ],
                ),
              )
            ],
          ),
        ) ,
      ),
    );
  }
}
