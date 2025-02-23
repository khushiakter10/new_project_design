import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khusi/constants/text_font_style.dart';
import 'package:khusi/gen/colors.gen.dart';
import 'package:khusi/helpers/ui_helpers.dart';

import '../../../gen/assets.gen.dart';

class SamohvalScreen extends StatefulWidget {
  const SamohvalScreen({super.key});

  @override
  State<SamohvalScreen> createState() => _SamohvalScreenState();
}

class _SamohvalScreenState extends State<SamohvalScreen> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c1F1F1F,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.c1F1F1F,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 23.w),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(50.r),
                    border: Border.all(color: Colors.transparent),
                  ),
                ),
                UIHelper.horizontalSpace(35.w),
                Column(
                  children: [
                    Image.asset(Assets.images.samo.path, height: 20),
                    Image.asset(Assets.images.education.path, height: 20),
                  ],
                ),
                UIHelper.horizontalSpace(50.w),
                Image.asset(Assets.images.rectangle.path, height: 20),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            Stack(
              children: [
                Container(
                  width: 145,
                  height: 145,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(290.r),
                      border: Border.all(color: AppColors.cF7B500)),
                ),
                Positioned(
                    top: 1,
                    right: 26,
                    child: CircleAvatar(
                        backgroundColor: AppColors.c6DD400, radius: 10)),
              ],
            ),
            UIHelper.verticalSpace(15.h),
            Text("'In the lessns we leran\n'1313 RUB'",
                style: TextFontStyle.cFFFFFF12),
            UIHelper.verticalSpace(20.h),
            Container(
              width: 221,
              height: 44,
              decoration: ShapeDecoration(
                color: AppColors.c352E1C,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r)),
              ),
              child: Center(
                  child: Text("Send Message", style: TextFontStyle.cF7B500)),
            ),
            UIHelper.verticalSpace(15.h),
            Container(
              width: 221,
              height: 44,
              decoration: ShapeDecoration(
                  color: AppColors.c352E1C,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r))),
              child: Center(
                  child: Text("'Send Message',", style: TextFontStyle.cF7B500)),
            ),
            UIHelper.verticalSpace(20.h),
            GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                            height: 600.h,
                            decoration: BoxDecoration(
                                color: AppColors.cFFFFFF,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30.r),
                                    topLeft: Radius.circular(30.r))),
                            child: ListView.separated(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 292.w,
                                    height: 70.h,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(side: BorderSide(color:AppColors.cF1F1F2),
                                        borderRadius: BorderRadius.circular(30.r),
                                      ),
                                    ),
                                    child: ListTile(
                                      leading: Image.asset(
                                          Assets.images.roket.path,
                                          height: 80,
                                          fit: BoxFit.cover),
                                      title: Text("LESSON 1",
                                          style: TextFontStyle.c00000012),
                                      trailing: Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 17.h),
                                        child: Image.asset(
                                            Assets.images.regular.path),
                                      ),
                                      subtitle: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "In the lessns we leran new words and rules\nfor vacalaburities continues and articles",
                                            style: TextFontStyle.c00000011,
                                          ),
                                          Text("Completed',",
                                              style: TextFontStyle.c6DD400)
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return  Slider(
                                    activeColor: AppColors.cAFFF00,
                                    value: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    });
                              },
                            ));
                      });
                },
                child: Text(
                  "Block user",
                  style: TextFontStyle.cE02020,
                ))
          ],
        ),
      ),
    );
  }
}
