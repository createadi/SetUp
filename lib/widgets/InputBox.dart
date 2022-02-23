import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:setup/constants/const.dart';

class InputBox extends StatelessWidget {
  final String hintTxt;
  final IconData iconType;
  InputBox(this.hintTxt, this.iconType);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: hintTxt == 'Password' ? true : false,
      enableSuggestions: false,
      autocorrect: false,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        suffixIcon: Icon(iconType),
        hintText: hintTxt,
        hintStyle: TextStyle(
          color: kHintColor,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kDarkBg, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
