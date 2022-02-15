import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String btnText;
  final Color bgColor;
  final Color foreColor;
  final Color borderColor;

  AppButton(@required this.btnText, @required this.bgColor,
      @required this.foreColor, @required this.borderColor);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        btnText,
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          bgColor,
        ),
        foregroundColor: MaterialStateProperty.all(
          foreColor,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(
              color: borderColor,
              width: 3.w,
            ),
          ),
        ),
      ),
    );
  }
}
