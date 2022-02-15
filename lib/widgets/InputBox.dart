import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:setup/constants/const.dart';
import 'package:setup/widgets/AppButton.dart';

class InputBox extends StatelessWidget {
  final String hintTxt;

  InputBox(this.hintTxt);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: hintTxt,
        hintStyle: TextStyle(
          color: kHintColor,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kDarkBg, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kDarkBg, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
