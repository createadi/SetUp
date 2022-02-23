import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:setup/constants/const.dart';
import 'package:setup/widgets/photo.dart';
import 'package:setup/widgets/ActionButton.dart';
import 'package:setup/widgets/InputBox.dart';

class RegistrationScreen extends StatelessWidget {
  static const String id = 'registration_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDarkBg,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(46, 40, 46, 0),
              child: Photo('resources/images/reg.png'),
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
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Register',
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
                        SizedBox(
                          height: 10.h,
                        ),
                        Expanded(
                          child: InputBox('Your Name', Icons.remove_red_eye),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Expanded(
                          child:
                              InputBox('Email Address', Icons.remove_red_eye),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Expanded(
                          child: InputBox('Password', Icons.lock),
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
                        Center(
                          child: Text(
                            'By signing up, you agree to our terms and condtions',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: Wrap(
                            verticalDirection: VerticalDirection.up,
                            children: [
                              Text(
                                "Already have an account? ",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  color: kDarkBg,
                                ),
                              ),
                              Text(
                                "Login",
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
