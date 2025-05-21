import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/helpers/spacing.dart';
import 'package:medical_app/core/widgets/app_text_form_field.dart';

import '../../../../core/theming/styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0.h, horizontal: 30.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8.0),
              Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: TextStyles.font14GrayRegular,
              ),
              verticalSpace(36),
              Form(
                key: formKey ,
                  child: Column(
                children: [
                  AppTextFormField(hintText: 'Email')
                ],
              ))
            ],
          ),
        ),
      )),
    );
  }
}
