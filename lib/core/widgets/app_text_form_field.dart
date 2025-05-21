import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/theming/colors.dart';
import 'package:medical_app/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;

  final InputBorder? focusedBorder;

  final InputBorder? enabledBorder;

  final TextStyle? inputTextStyle;

  final TextStyle? hintTextStyle;

  final String hintText;

  final bool? isObscureText;

  final Widget? suffixIcon;

  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintTextStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ?? OutlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.4),
            borderRadius: BorderRadius.circular(16.0)),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorsManager.lightGray, width: 1.3),
            borderRadius: BorderRadius.circular(16.0)),
        hintText: hintText,
        hintStyle: hintTextStyle ?? TextStyles.font14LightGrayRegular,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: ColorsManager.moreLightGray
      ),
      obscureText: isObscureText ?? false,
      style: hintTextStyle ?? TextStyles.font14DarkBlueMedium,
    );
  }
}
