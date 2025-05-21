

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/theming/colors.dart';

class TextStyles{

  static TextStyle font24Black700weight = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24.0.sp,
    color: Colors.black
  );

  static TextStyle font32BlueBold = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 32.0.sp,
      color: ColorsManager.mainBlue
  );

  static TextStyle font13GrayRegular = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 13.0.sp,
      color: ColorsManager.gray
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
      fontWeight: FontWeight.w500
      ,
      fontSize: 16.0.sp,
      color: Colors.white
  );

}