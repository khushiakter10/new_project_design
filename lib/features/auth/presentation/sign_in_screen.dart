import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khusi/constants/text_font_style.dart';
import 'package:khusi/helpers/all_routes.dart';
import 'package:khusi/helpers/navigation_service.dart';
import 'package:khusi/helpers/ui_helpers.dart';
import 'package:khusi/widget/custom_text_form.dart';

import '../../../common_widget/custom_button.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController  passwordController = TextEditingController();
  bool _value = false;
  bool checkbox = true;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.images.signin.path),
                fit: BoxFit.cover)
        ),
        child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(vertical: 18.0,horizontal: 15.w),
          child: Column(
            children: [
              UIHelper.verticalSpace(50.h),
              Row(
                children: [Image.asset(Assets.images.circle2.path,height: 24.h),
                  UIHelper.horizontalSpace(70.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Assets.images.samohval.path,
                        height: 11.h,
                      ),
                      UIHelper.verticalSpace(7.h),
                      Image.asset(
                        Assets.images.education.path,
                        height: 11.h,
                      ),
                    ],
                  ),
                  UIHelper.horizontalSpace(70.w),
                  CupertinoSwitch(
                      activeTrackColor:  AppColors.c000000,
                      inactiveThumbColor:  AppColors.c6236FF,
                      inactiveThumbImage: AssetImage("assets/images/start.png"),
                      thumbColor:  AppColors.c6236FF,
                      inactiveTrackColor:  AppColors.c000000,
                      activeThumbImage: AssetImage("assets/images/start.png"),
                      value: _value, onChanged: (value){
                    setState(() {
                      _value = value;
                      print(value);
                    });
                  }
                  )

                ],
              ),
              UIHelper.verticalSpace(100.h),
              Column(
                children: [
                  Text("Create Account",style: TextFontStyle.c00000034),
                  UIHelper.verticalSpace(10.h),
                  Text("In the lessns we leran new words and rules",style: TextFontStyle.c00000015w400),
                  Text("for vacalaburities continues and articles",style: TextFontStyle.c00000015w400)
                ],
              ),
              UIHelper.verticalSpace(40.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomTextFormWiget(
                  controller: emailController,
                  fillColor: AppColors.cFFFFFF,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide.none
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: AppColors.cE6E6E6),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: AppColors.cE6E6E6),
                  ),
                  prefixIcon:  Image.asset(Assets.icons.shape1.path,height: 18.h),
                  hintTxt: "Email",
                  hinStyleColor: TextFontStyle.c6D7278w400,
                ),
              ),
              UIHelper.verticalSpace(10.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomTextFormWiget(
                  controller: passwordController,
                  fillColor: AppColors.cFFFFFF,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide.none
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: AppColors.cE6E6E6),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: AppColors.cE6E6E6),
                  ),
                  prefixIcon:  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Image.asset(Assets.icons.block.path,height: 18.h),
                  ),
                  hintTxt: "Email",
                  hinStyleColor: TextFontStyle.c6D7278w400,
                ),
              ),
              UIHelper.verticalSpace(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Checkbox(
                          shape: OutlinedBorder.lerp(
                              const RoundedRectangleBorder(),
                              const CircleBorder(),
                              0.33.r),
                          side: const BorderSide(
                              color: AppColors.cABB3BB, width: 1),
                          activeColor: AppColors.cFFFFFF,
                          checkColor: AppColors.c000000,
                        value:  checkbox,
                          onChanged: (newValue) {
                            setState(() {
                              checkbox = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Text("Terms Of Using this applications",style: TextFontStyle.c00000011),

                ],
              ),
              UIHelper.verticalSpace(25.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: customeButton(
                        borderColor: Colors.transparent,
                        name: "Start to learn",
                        onCallBack: () {
                          NavigationService.navigateTo(Routes.indexScreen);
                        },
                        height: 44.h,
                        minWidth: 182.w,
                        borderRadius: 22.r,
                        color: AppColors.cFBD301,
                        textStyle: TextFontStyle.cFFFFFFw700,
                        context: context),
                  ),
                ],
              ),
              UIHelper.verticalSpace(15.h),
              Text("HAVE YOU READY? SIGN IN",style: TextFontStyle.c1098FEhaveyouread)
            ],
          ),
        ),
      ),
    );
  }
}
