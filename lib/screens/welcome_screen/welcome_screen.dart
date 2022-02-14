import 'package:flutter/material.dart';
import 'package:setup/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                Container(
                  margin: EdgeInsets.only(top: 20.h),
                  child: Center(
                    child: Image(
                      image: AssetImage('resources/images/welcome.png'),
                      width: 282.w,
                      height: 264.h,
                    ),
                  ),
                ),
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
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
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
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFFFFDE69),
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        Color(0xFF1B1A40),
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
                  height: 27.h,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        kDarkBg,
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        Color(0xFFFFDE69),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                            color: Color(0xFFFFDE69),
                            width: 3.w,
                          ),
                        ),
                      ),
                    ),
                  ),
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
