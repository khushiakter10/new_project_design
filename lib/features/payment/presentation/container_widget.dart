// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../gen/assets.gen.dart';
// import '../../gen/colors.gen.dart';
// import '../../helpers/ui_helpers.dart';
//
// class ContainerWidget extends StatefulWidget {
//   final String text;
//   final TextStyle? textStyle;
//   final Color? color;
//   final Decoration? decoration;
//   final OutlineInputBorder? outlineInputBorder;
//   final BorderRadius? borderRadius;
//   final BorderSide? borderSide;
//   const ContainerWidget({
//     super.key,
//      required this.text,
//      this.textStyle,
//     this.color,
//     this.decoration,
//      this.outlineInputBorder,
//      this.borderRadius,
//      this.borderSide,
//   });
//
//   @override
//   State<ContainerWidget> createState() => _ContainerWidgetState();
// }
//
// class _ContainerWidgetState extends State<ContainerWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20),
//       decoration: BoxDecoration(
//         color: AppColors.cE2CBFF,
//         borderRadius: BorderRadius.circular(33.r),
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 33),
//         child: Row(
//           children: [
//             Image.asset(Assets.images.signeture2, height: 24.w),
//             UIHelper.horizontalSpace(12.w),
//             Text(
//               widget.text,
//               style: widget.textStyle,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
