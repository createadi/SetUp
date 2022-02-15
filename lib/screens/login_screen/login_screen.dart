import 'package:flutter/material.dart';
import 'package:setup/constants/const.dart';
import 'package:setup/widgets/photo.dart';
import 'package:setup/widgets/AppButton.dart';
import 'package:setup/widgets/InputBox.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDarkBg,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(46, 40, 46, 0),
              child: Photo('resources/images/login.png'),
            ),
            Expanded(
              child: Container(
                // color: kYellowColor,
                width: 375.w,
                height: 533.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.h),
                    topRight: Radius.circular(40.h),
                  ),
                  color: kYellowColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 30.sp),
                            ),
                            Icon(
                              Icons.close,
                              color: kRedColor,
                              size: 50.h,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Expanded(
                        child: InputBox('Email Address'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Expanded(
                        child: InputBox('Password'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (bool) {}),
                              Text(
                                'Remember Me',
                                style: TextStyle(
                                  color: kDarkBg,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: kDarkBg,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      Expanded(
                        child: AppButton(
                            'Register', kDarkBg, kYellowColor, kDarkBg),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                        child: Wrap(
                          verticalDirection: VerticalDirection.down,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: kDarkBg,
                              ),
                            ),
                            Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: kRedColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
