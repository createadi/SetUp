import 'package:flutter/material.dart';
import 'package:setup/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  static const String id = 'spalsh_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDarkBg,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(
                image: AssetImage('resources/images/logo.png'),
                width: 550.w,
                height: 250.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
