import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khusi/gen/colors.gen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../helpers/ui_helpers.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,  // Ensures no default background color
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).padding.top + 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.roket1.path),
            fit: BoxFit.none,
          ),
        ),
        child: SingleChildScrollView(  // Wrap with SingleChildScrollView to avoid overflow
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(30.h),
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
                Text("100 Essential", style: TextFontStyle.cFFFFFFw700poppins),
                Text("Grammar", style: TextFontStyle.cFFFFFFw700poppins),
                UIHelper.verticalSpace(10),

                // ListTile 1
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset(Assets.images.easten.path),
                  title: Text("In the lessons we", style: TextFontStyle.cFFFFFFw400),
                  subtitle: Text("learn new words", style: TextFontStyle.cFFFFFFw400),
                ),
                UIHelper.verticalSpace(5.h),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Finished", style: TextFontStyle.headlinec6DD400w400),
                ),
                UIHelper.verticalSpace(5.h),
                LinearPercentIndicator(
                  barRadius: Radius.circular(10),
                  width: MediaQuery.of(context).size.width - 110,
                  lineHeight: 7.0,
                  percent: 1,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: AppColors.cA4EB01,
                  backgroundColor: AppColors.c87DF01,
                ),
                UIHelper.verticalSpace(10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Text("Reputation", style: TextFontStyle.cFA6400w500),
                    ),
                    UIHelper.horizontalSpace(10.w),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Text("Reputation", style: TextFontStyle.cFA6400w500),
                    ),
                    UIHelper.horizontalSpace(40.w),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        Positioned(
                          left: 17,
                          top: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 34,
                          top: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 80,
                          right: -1,
                          top: 1,
                          child: Text(
                            '3',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                UIHelper.verticalSpace(10.h),

                // ListTile 2
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset(Assets.images.easten.path),
                  title: Text("In the lessons we", style: TextFontStyle.cFFFFFFw400),
                  subtitle: Text("learn new words", style: TextFontStyle.cFFFFFFw400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
