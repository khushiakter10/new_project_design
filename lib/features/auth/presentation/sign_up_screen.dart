// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:khusi/features/auth/widget/pass_text_field.dart';
// import 'package:khusi/helpers/ui_helpers.dart';
// import 'package:khusi/provider/auth_getx.dart';
// import '../../../gen/assets.gen.dart';
// import '../widget/email_text_field.dart';
// class SignUpScreen extends StatelessWidget {
//   SignUpScreen({super.key});
//   final  SignInController signUpController = Get.put(SignInController());
//   final GlobalKey<FormState> formky = GlobalKey<FormState>();
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
//           backgroundColor: Colors.transparent,
//           body:
//           Form(
//             key: formkey,
//             // child: Column(
//               children: [
//                 EmailTextField(
//                   emailController: signUpController.emailController,
//                 ),
//                 UIHelper.verticalSpaceMedium,
//                 PassTextField(passController: signUpController.passController),
//                 UIHelper.verticalSpaceMedium,
//                 PassTextField(passController: signUpController.passController),
//                 UIHelper.verticalSpaceMedium,
//                 ElevatedButton(
//                   onPressed: () {
//                     if (formkey.currentState?.validate() ?? false) {
//                       // Proceed with sign-up logic
//                     }
//                   },
//                   child: Text("Sign Up"),
//                 ),
//               ],
//             ),
//           )
//       ),
//     );
//   }
// }