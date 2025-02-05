 import 'package:flutter/material.dart';
import 'gen/assets.gen.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.images.picture4.path),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  Assets.images.image.path,
                  height: 400,
                  width: 400,
                ),  Image.asset(
                  Assets.images.cress.path,
                  height: 200,
                  width: 300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
