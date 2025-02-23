import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khusi/gen/colors.gen.dart';
import 'package:khusi/helpers/all_routes.dart';
import 'package:khusi/helpers/navigation_service.dart';
import 'package:khusi/helpers/ui_helpers.dart';

import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';

class Lesson_Screen extends StatefulWidget {
  const Lesson_Screen({super.key});

  @override
  State<Lesson_Screen> createState() => _Lesson_ScreenState();
}

class _Lesson_ScreenState extends State<Lesson_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        title: Text("'ESSENTIAL GRAMMAR", style: TextFontStyle.c000000),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          child: Image.asset(Assets.images.rectangle.path, height: 20),
        ),
        elevation: 1,
        backgroundColor: AppColors.cFFFFFF,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 321.w,
                height: 321.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                        image: AssetImage(Assets.images.ghrai.path))),
              ),
            ),
            UIHelper.verticalSpace(10.h),
            Column(
              children: [
                Text("Essential Grammar", style: TextFontStyle.c00000022),
                UIHelper.verticalSpace(10.h),
                Text("LESSONS 1", style: TextFontStyle.c000000),
                UIHelper.verticalSpace(15.h),
                Text(" lessns we leran new words and rules for vacalaburin",
                    style: TextFontStyle.c000000),
                UIHelper.verticalSpace(15.h),
              ],
            ),
            GestureDetector(
              onTap: (){
                NavigationService.navigateTo(Routes.dataCoprivaScreen);
              },
              child: SizedBox(
                height: 40.h,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 7),
                        child: Container(
                          width: 120.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: AppColors.cF6D8C4,
                              borderRadius: BorderRadius.circular(30.r),
                              border: Border.all(color: Colors.transparent)),
                          child: Center(
                              child: Text("Reputation",
                                  style: TextFontStyle.cFA6400)),
                        ),
                      );
                    }),
              ),
            ),
            UIHelper.verticalSpace(30.h),

            GestureDetector(
              onTap: (){
                NavigationService.navigateTo(Routes.dataCoprivaScreen);
              },
              child: SizedBox(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (_,index) {
                    return Container(
                      height: 100.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: AppColors.cEDEDED),
                      ),
                      child: ListTile(
                        leading: Image.asset(Assets.images.plen.path,height: 80.h,),
                        title:
                            Text("Best class behavior", style: TextFontStyle.c00000015),

                        trailing:  Padding(
                          padding:  EdgeInsets.symmetric(vertical: 20),
                          child: Image.asset(Assets.images.regular.path),
                        ),
                        subtitle: Column(
                          children: [
                            Text(
                              "In the lessns we leran new words\nand rules",
                              style:  TextFontStyle.c00000013,
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Text("Free",style: TextFontStyle.c00000011),
                                  UIHelper.horizontalSpace(10.w),
                                  Text("653 p.",style: TextFontStyle.c00000011,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
