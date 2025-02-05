import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:khusi/features/auth/presentation/sign_in_screen.dart';
final class Routes {
  static final Routes _routes = Routes._internal();

  Routes._internal();

  static Routes get instance => _routes;

  // ################## Auth User ##################
  static const String profileScreen = '/profileScreen';

}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();

  RouteGenerator._internal();

  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {














      // case Routes.signInUserScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const SignInScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const SignInScreen());
      //
      // case Routes.signUpUserScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const SignUpScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const SignUpScreen());
      //
      // case Routes.otpVerificationUserScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const OtpVerificationScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //       builder: (context) => const OtpVerificationScreen());
      //
      // case Routes.navigationScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const NavigationScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //       builder: (context) => const NavigationScreen());
      //
      // case Routes.tripDetailsUser:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const TripDetailsUser(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const TripDetailsUser());
      //
      // case Routes.pickUpLocation:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const PickUpLocation(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const PickUpLocation());
      //
      //
      // case Routes.userProfile:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const UserProfile(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const UserProfile());
      //
      // case Routes.userEditProfile:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const UserEditProfile(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const UserEditProfile());
      //
      // case Routes.accountSetting:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const AccountSettingScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const AccountSettingScreen());
      //
      //
      // case Routes.digitalPay:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const DigitalPayment(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const DigitalPayment());
      //
      // case Routes.mapScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const MapScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const MapScreen());
      //
      //
      //
      // case Routes.driverAreaSignIn:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const DriverAreaSignUp(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const DriverAreaSignUp());
      //
      // case Routes.driverCarSignUp:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const DriverCarSignUp(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const DriverCarSignUp());
      //
      // case Routes.driveSignUpFrom2:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //       widget: const DriveSignUpFrom2(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const DriveSignUpFrom2());
      //



      default:
        return null;
    }
  }
}

//  weenAnimationBuilder(
//   child: Widget,
//   tween: Tween<double>(begin: 0, end: 1),
//   duration: Duration(milliseconds: 1000),
//   curve: Curves.bounceIn,
//   builder: (BuildContext context, double _val, Widget child) {
//     return Opacity(
//       opacity: _val,
//       child: Padding(
//         padding: EdgeInsets.only(top: _val * 50),
//         child: child
//       ),
//     );
//   },
// );

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
    settings: settings,
    reverseTransitionDuration: const Duration(milliseconds: 1),
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return widget;
    },
    transitionDuration: const Duration(milliseconds: 1),
    transitionsBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
      return FadeTransition(
        opacity: CurvedAnimation(
          parent: animation,
          curve: Curves.ease,
        ),
        child: child,
      );
    },
  );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
