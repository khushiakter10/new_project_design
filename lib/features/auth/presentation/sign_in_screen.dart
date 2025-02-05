//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:khusi/features/auth/widget/pass_text_field.dart';
// import 'package:khusi/helpers/ui_helpers.dart';
// import 'package:khusi/provider/auth_getx.dart';
// import '../../../gen/assets.gen.dart';
// import '../widget/email_text_field.dart';
// class SignInScreen extends StatelessWidget {
//    SignInScreen({super.key,});
//
//   final _signInController = TextEditingController();
//   final _passController = TextEditingController();
//   final  _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Container(
//       height: double.infinity,
//       width: double.infinity,
//       decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage(Assets.images.onbording.path),
//               fit: BoxFit.cover)),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body:
//           Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 EmailTextField(
//                   emailController:_signInController,
//                 ),
//                 UIHelper.verticalSpaceMedium,
//                 PassTextField(passController: _passController)
//               ],
//             ),
//           )
//       ),
//     );
//   }
// }
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// // // Form(
// // // key: SignInController.formKey,
// // // child: const Column(
// // // children: [],
// // // )
// // // )
// // //,
// //
// //
// //
// //
// //
// // //
// // // Container(
// // // height: 400,
// // // width: 300,
// // // child: Padding(
// // // padding: const EdgeInsets.all(30),
// // // child: Form(
// // // key: SignInController.f,
// // // child: Column(
// // // crossAxisAlignment: CrossAxisAlignment.start,
// // // mainAxisAlignment: MainAxisAlignment.center,
// // // children: [
// // // Text("Log in to your",style: TextFontStyle.text02c4D4D4D,),
// // // Text("account",style: TextFontStyle.text02c4D4D4D,),
// // // UIHelper.verticalSpaceMedium,
// // //
// // // ],
// // // ),
// // // ),
// // // ),
// // // ),