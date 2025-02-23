import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khusi/constants/text_font_style.dart';
import 'package:khusi/helpers/ui_helpers.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});
  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.images.app.path), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
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
              UIHelper.verticalSpace(95.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("100 Essential",
                      style: TextFontStyle.cFFFFFFw700poppins),
                  Text("Grammar", style: TextFontStyle.cFFFFFFw700poppins),
                  ListTile(
                    contentPadding:
                        EdgeInsets.zero, // Default padding সরানো হয়েছে
                    leading: Image.asset(Assets.images.easten.path),
                    title: Text("In the lessons we",
                        style: TextFontStyle.cFFFFFFw400),
                    subtitle: Text("learn new words",
                        style: TextFontStyle.cFFFFFFw400),
                  ),
                  UIHelper.verticalSpace(5.h),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Finished",
                        style: TextFontStyle.headlinec6DD400w400),
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
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 15.w),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text("Reputation",
                            style: TextFontStyle.cFA6400w500),
                      ),
                      UIHelper.horizontalSpace(10.w),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 15.w),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            // color: AppColors.c714121,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text("Reputation",
                            style: TextFontStyle.cFA6400w500),
                      ),
                      UIHelper.horizontalSpace(40.w),
                      Stack(
                        clipBehavior:
                            Clip.none, // Ensures child widgets aren't clipped
                        children: [
                          // First Container (Red)
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.h, horizontal: 10.w),
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
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 10.w),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                          // Third Container (Green) - Positioned
                          Positioned(
                            left: 34, // Shifted further to the right
                            top: 0, // Shifted down
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 10.w),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                          // Number Text Positioned on the Right Side
                          Positioned(
                            left: 80,
                            right:
                                -1, // Moves number slightly outside the Stack
                            top: 1,
                            child: Text(
                              '3', // Change this number dynamically if needed
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
                  UIHelper.verticalSpace(40.h),
                  ListTile(
                    contentPadding:
                        EdgeInsets.zero, // Default padding সরানো হয়েছে
                    leading: Image.asset(Assets.images.easten.path),
                    title: Text("In the lessons we",
                        style: TextFontStyle.headlinec000000),
                    subtitle: Text("learn new words",
                        style: TextFontStyle.headlinec000000),
                  ),
                  UIHelper.verticalSpace(7.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.w),
                    child: Text("Completed 12 of 12",
                        style: TextFontStyle.headlinec6DD400w400),
                  ),
                  UIHelper.verticalSpace(5.h),
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
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context,index) {
                      return  Container(
                          decoration: BoxDecoration(
                            color: AppColors.cFFFFFF,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: Colors.transparent),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 40.h, horizontal: 40.w),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(Assets.images.roket.path),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(27.r),
                                        bottomLeft: Radius.circular(27.r)
                                    )
                                ),
                              ),
                              UIHelper.horizontalSpace(15.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("LESSON 1",style: TextFontStyle.headlinec000000w700),
                                  Text("In the lessns we leran new words and ",style: TextFontStyle.headlinec000000),
                                  Text("for vacalaburities continues and articl",style: TextFontStyle.headlinec000000),
                                ],
                              ),
                              UIHelper.horizontalSpace(30.w),
                              Image.asset(Assets.icons.a555.path,height: 15.h,)
                            ],
                          ));
                    },

                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
