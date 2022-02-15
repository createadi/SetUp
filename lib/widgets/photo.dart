import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Photo extends StatelessWidget {
  final String imgURL;

  Photo(@required this.imgURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      child: Center(
        child: Image(
          image: AssetImage(imgURL),
          width: 282.w,
          height: 264.h,
        ),
      ),
    );
  }
}
