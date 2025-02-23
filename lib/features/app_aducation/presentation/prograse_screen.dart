 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khusi/gen/colors.gen.dart';
import 'package:khusi/helpers/all_routes.dart';
import 'package:khusi/helpers/navigation_service.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../helpers/ui_helpers.dart';

class PrograseScreen extends StatefulWidget {
  const PrograseScreen({super.key});

  @override
  State<PrograseScreen> createState() => _PrograseScreenState();
}

class _PrograseScreenState extends State<PrograseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF2EFD4,
      body: SingleChildScrollView(
        padding:  EdgeInsets.symmetric(vertical: 15.h,horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(70),
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: (){
                    },
                    child: Image.asset(Assets.images.rectangle.path, height: 15.h)
                ),
                UIHelper.horizontalSpace(70.w),
                Column(
                  children: [
                    Image.asset(Assets.images.samo.path, height: 10.h),
                    UIHelper.verticalSpace(10.h),
                    Image.asset(Assets.images.education.path, height: 10.h),
                  ],
                ),
                UIHelper.horizontalSpace(40.w),
                GestureDetector(
                  onTap: (){
                  },
                  child: Row(
                    children: [
                      Image.asset(Assets.images.loves.path,height: 15.h,),
                      UIHelper.horizontalSpace(40.w),
                      Image.asset(
                        Assets.images.oval.path,
                        height: 30.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
            UIHelper.verticalSpace(50),
            SizedBox(
              height: 199.h, // Ensure it fits the image
              child: ListView.builder(
                //shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Set itemCount to 5
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w), // Add spacing between items
                    child: Container(
                      width: 371.w, // Width for each item
                      height: 199.h, // Height for each item
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        image: DecorationImage(
                          image: AssetImage(Assets.images.gems.path),
                          fit: BoxFit.cover, // Make sure image covers the container properly
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            UIHelper.verticalSpace(20.h),
            Text("Grammar", style: TextFontStyle.headlinec000000w70018),
            UIHelper.verticalSpace(20.h),
            GestureDetector(
              onTap: (){
                NavigationService.navigateTo(Routes.splashScreen);
              },
              child: SizedBox(
                height: 500,
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10.w),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.cFFFFFF,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: AppColors.cEDEDED),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("100 Essential", style: TextFontStyle.headlinec000000w70018),
                              Text("Grammar", style: TextFontStyle.headlinec000000w70018),
                              ListTile(
                                contentPadding: EdgeInsets.zero, // Default padding সরানো হয়েছে
                                leading: Image.asset(Assets.images.easten.path),
                                title: Text("In the lessons we", style: TextFontStyle.headlinec000000w400),
                                subtitle: Text("learn new words", style: TextFontStyle.headlinec000000w400),
                              ),
                              UIHelper.verticalSpace(6.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  LinearPercentIndicator(
                                    barRadius: Radius.circular(10),
                                    width: MediaQuery.of(context).size.width - 150,
                                    lineHeight: 9.0,
                                    percent: 1,
                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                    progressColor: AppColors.cA4EB01,
                                    backgroundColor: AppColors.c87DF01,
                                  ),
                                ],
                              ),
                              UIHelper.verticalSpace(8.h),
                              Center(
                                child: Text("Completed 12 of 12", style: TextFontStyle.headlinec6DD400w400),
                              ),
                              UIHelper.verticalSpace(15.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                                    decoration: BoxDecoration(
                                        color: AppColors.cFEE0CC,
                                        borderRadius: BorderRadius.circular(20.r)
                                    ),
                                    child: Text("Reputation", style: TextFontStyle.cFA6400w500),
                                  ),
                                  UIHelper.horizontalSpace(10.w),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                                    decoration: BoxDecoration(
                                        color: AppColors.cFEE0CC,
                                        borderRadius: BorderRadius.circular(20.r)
                                    ),
                                    child: Text("Reputation", style: TextFontStyle.cFA6400w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }, separatorBuilder: (context, index) {
                  return SizedBox(height: 12.h);
                },
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
