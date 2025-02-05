import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF6F5F5,
      appBar: AppBar(
        backgroundColor: AppColors.cF6F5F5,
        title: Text("Checkout",
            style: TextFontStyle.c2D0C57w600
                .copyWith(color: Color(0xffc2D0C57), fontSize: 17)),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(19.0),
          child: Image.asset(Assets.icons.a22.path, height: 20.h),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 19.0.h, horizontal: 18.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Payment method",
                      style: TextFontStyle.c2D0C57
                          .copyWith(color: Color(0xffc2D0C57))),
                  Spacer(),
                  Text(
                    "CHANGE",
                    style: TextFontStyle.c7203FFchange,
                  )
                ],
              ),
              UIHelper.verticalSpace(22.h),
              Row(
                children: [
                  Image.asset("assets/images/check.png", height: 30.h),
                  UIHelper.horizontalSpace(25.w),
                  Text(
                    "**** **** **** 4747",
                    style: TextFontStyle.c9586A8letuch,
                  )
                ],
              ),
              UIHelper.verticalSpace(28.h),
              Row(
                children: [
                  Text("Delivery address",
                      style: TextFontStyle.c2D0C57
                          .copyWith(color: Color(0xffc2D0C57))),
                  Spacer(),
                  Text(
                    "CHANGE",
                    style: TextFontStyle.c7203FFchange,
                  ),
                ],
              ),
              UIHelper.verticalSpace(30.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset(
                      Assets.images.home.path,
                      height: 24.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Alexandra Smith",
                            style: TextFontStyle.c9586A8letuch),
                        Text("Cesu 31 k-2 5.st, SIA Chili",
                            style: TextFontStyle.c9586A8letuch),
                        Text(
                          "Riga",
                          style: TextFontStyle.c9586A8letuch,
                        ),
                        Text(
                          "LV–1012",
                          style: TextFontStyle.c9586A8letuch,
                        ),
                        Text(
                          "Latvia",
                          style: TextFontStyle.c9586A8letuch,
                        )
                      ],
                    ),
                  )
                ],
              ),
              UIHelper.verticalSpace(35.h),
              Row(
                children: [
                  Text("Delivery options",
                      style: TextFontStyle.c2D0C57
                          .copyWith(color: Color(0xffc2D0C57))),
                  Spacer(),
                  Text(
                    "CHANGE",
                    style: TextFontStyle.c7203FFchange,
                  ),
                ],
              ),
              UIHelper.verticalSpace(20.h),
              Row(
                children: [
                  Image.asset(
                    Assets.images.big.path,
                    height: 24.h,
                  ),
                  UIHelper.horizontalSpace(20.w),
                  Text(
                    "I’ll pick it up myself",
                    style: TextFontStyle.c9586A8letuch,
                  )
                ],
              ),
              UIHelper.verticalSpace(20.h),
              Row(
                children: [
                  Image.asset(
                    Assets.images.bike.path,
                    height: 24.h,
                  ),
                  UIHelper.horizontalSpace(20.w),
                  Text(
                    "By courier",
                    style: TextFontStyle.c9586A8letuch,
                  )
                ],
              ),
              UIHelper.verticalSpace(20.h),
              Row(
                children: [
                  Image.asset(
                    Assets.images.drone.path,
                    height: 24.h,
                  ),
                  UIHelper.horizontalSpace(20.w),
                  Text("By Drone", style: TextFontStyle.c7203FF),
                  Spacer(),
                  Image.asset(Assets.images.signeture2, height: 24.h),
                ],
              ),
              UIHelper.verticalSpace(50.h),
              Row(
                children: [
                  Text(
                    "Non-contact-delivery",
                    style: TextFontStyle.c2D0C57.copyWith(color: Color(0xffc2D0C57),),
                  ),
                  Spacer(),
                  Container(
                    height: 30.h,
                    width: 74.w,
                    decoration: BoxDecoration(
                      color: _value == false ? AppColors.cE2CBFF : AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.transparent),
                    ),
                    child: Row(
                      children: [
                        Switch(
                          value: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                              print(_value);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
