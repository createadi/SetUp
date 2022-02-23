import 'package:flutter/material.dart';
import 'package:setup/constants/const.dart';
import 'package:setup/widgets/photo.dart';
import 'package:setup/widgets/ActionButton.dart';
import 'package:setup/widgets/InputBox.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool switchState = false;

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
                              Icons.cancel_outlined,
                              color: kRedColor,
                              size: 40.h,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Expanded(
                        child: InputBox(
                          'Email Address',
                          Icons.remove_red_eye,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Expanded(
                        child: InputBox(
                          'Password',
                          Icons.lock,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Switch(
                                value: switchState,
                                activeColor: switchState
                                    ? Colors.green[900]
                                    : Colors.white,
                                activeTrackColor: switchState
                                    ? Colors.lightGreen
                                    : Colors.white,
                                inactiveThumbColor:
                                    switchState ? Colors.white : kRedColor,
                                onChanged: (bool value) {
                                  setState(() {
                                    switchState = value;
                                  });
                                },
                              ),
                              Text(
                                'Remember Me',
                                style: TextStyle(
                                  color: kDarkBg,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: kDarkBg,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      Expanded(
                        flex: 1,
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
                          verticalDirection: VerticalDirection.up,
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
                                fontSize: 16.sp,
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
