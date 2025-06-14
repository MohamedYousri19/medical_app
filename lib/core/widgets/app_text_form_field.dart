import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/theming/colors.dart';
import 'package:medical_app/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;

  final InputBorder? focusedBorder;

  final InputBorder? enabledBorder;

  final InputBorder? errorBorder;

  final InputBorder? focusErrorBorder;

  final TextStyle? inputTextStyle;

  final TextStyle? hintTextStyle;

  final String hintText;

  final bool? isObscureText;

  final Widget? suffixIcon;

  final FocusNode? focusNode;

  final TextEditingController? controller;

  final Function(String?) validator;

  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintTextStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.focusNode,
      this.controller,
      required this.validator,
      this.errorBorder,
      this.focusErrorBorder});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: InputDecorationTheme(
          suffixIconColor: Colors.grey,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: Colors.blue,
            ),
      ),
      child: TextFormField(
        validator: (value) {
          return validator(value);
        },
        controller: controller,
        focusNode: focusNode,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorsManager.mainBlue, width: 1.4.w),
                  borderRadius: BorderRadius.circular(16.0)),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorsManager.lightGray, width: 1.3.w),
                  borderRadius: BorderRadius.circular(16.0)),
          errorBorder: errorBorder ??
              OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.3.w),
                  borderRadius: BorderRadius.circular(16.0)),
          focusedErrorBorder: focusErrorBorder ??
              OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.3.w),
                  borderRadius: BorderRadius.circular(16.0)),
          hintText: hintText,
          hintStyle: hintTextStyle ?? TextStyles.font14LightGrayRegular,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: ColorsManager.moreLightGray,
        ),
        obscureText: isObscureText ?? false,
        style: hintTextStyle ?? TextStyles.font14DarkBlueMedium,
        cursorColor: ColorsManager.mainBlue,
      ),
    );
  }
}
