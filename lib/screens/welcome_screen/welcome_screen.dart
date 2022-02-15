import 'package:flutter/material.dart';
import 'package:setup/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:setup/widgets/photo.dart';
import 'package:setup/widgets/AppButton.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDarkBg,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 45.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Photo('resources/images/welcome.png'),
                SizedBox(
                  height: 37.h,
                ),
                Center(
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFEF5858),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Center(
                  child: Text(
                    'Prioritize Your Tasks and ease your lifestyle!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Expanded(
                  child: AppButton(
                    'Create Account',
                    kYellowColor,
                    kDarkBg,
                    kYellowColor,
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Expanded(
                  child:
                      AppButton('Login', kDarkBg, kYellowColor, kYellowColor),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Expanded(
                          child: Image(
                            image: AssetImage('resources/images/google.png'),
                            width: 40.h,
                            height: 40.h,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Continue with Google',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        kDarkBg,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
