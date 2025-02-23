import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khusi/gen/colors.gen.dart';
import 'package:khusi/helpers/ui_helpers.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';

class CamoxvalScreen extends StatefulWidget {
  const CamoxvalScreen({super.key});

  @override
  State<CamoxvalScreen> createState() => _CamoxvalScreenState();
}

class _CamoxvalScreenState extends State<CamoxvalScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Assets.images.number1.path),fit: BoxFit.cover)
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 18.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(230),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w),
              child: Text("100 Essential", style: TextFontStyle.cFFFFFFw700poppins),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w),
              child: Text("Grammar", style: TextFontStyle.cFFFFFFw700poppins),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w),
              child: ListTile(
                contentPadding: EdgeInsets.zero, // Default padding সরানো হয়েছে
                leading: Image.asset(Assets.images.easten.path),
                title: Text("In the lessons we", style: TextFontStyle.cFFFFFFw400),
                subtitle: Text("learn new words", style: TextFontStyle.cFFFFFFw400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Completed 12 of 12", style: TextFontStyle.headlinec6DD400w400),
            ),
            UIHelper.verticalSpace(6.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LinearPercentIndicator(
                  barRadius: Radius.circular(10),
                  width: MediaQuery.of(context).size.width - 170,
                  lineHeight: 7.0,
                  percent: 1,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: AppColors.cA4EB01,
                  backgroundColor: AppColors.c87DF01,
                ),
              ],
            ),
            UIHelper.verticalSpace(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.r)
                  ),
                  child: Text("Reputation", style: TextFontStyle.cFA6400w500),
                ),
                UIHelper.horizontalSpace(10.w),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      // color: AppColors.c714121,
                      borderRadius: BorderRadius.circular(20.r)
                  ),
                  child: Text("Reputation", style: TextFontStyle.cFA6400w500),
                ),
                UIHelper.horizontalSpace(40.w),
                Stack(
                  clipBehavior: Clip.none, // Ensures child widgets aren't clipped
                  children: [
                    // First Container (Red)
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    // Second Container (Blue) - Positioned
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
                    // Third Container (Green) - Positioned
                    Positioned(
                      left: 34, // Shifted further to the right
                      top: 0,  // Shifted down
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    // Number Text Positioned on the Right Side
                    Positioned(
                      left: 80,
                      right: -1, // Moves number slightly outside the Stack
                      top: 1,
                      child: Text(
                        '3', // Change this number dynamically if needed
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            UIHelper.verticalSpace(150.h),
            ListTile(
              contentPadding: EdgeInsets.zero, // Default padding সরানো হয়েছে
              leading: Image.asset(Assets.images.easten.path),
              title: Text("In the lessons we", style: TextFontStyle.headlinec000000),
              subtitle: Text("learn new words", style: TextFontStyle.headlinec000000),
            ),
            UIHelper.verticalSpace(7.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 6.w),
              child: Text("Completed 12 of 12", style: TextFontStyle.headlinec6DD400w400),
            ),
            UIHelper.verticalSpace(7.h),
            Row(
              children: [
                LinearPercentIndicator(
                  barRadius: Radius.circular(10),
                  width: MediaQuery.of(context).size.width - 110,
                  lineHeight: 7.0,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  percent: 0.5,
                  progressColor: AppColors.c87DF01,
                  backgroundColor: AppColors.c6D7278,
                ),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            UIHelper.customDivider(
              height: 1.h,
              color: AppColors.c6D7278,
            ),
            UIHelper.verticalSpace(10.h),
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.cF9F9F9,
                borderRadius: BorderRadius.circular(4.r),
              ),
            )
            ],
        ),
      ),
    ),
    );
  }
}
