import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/helpers/spacing.dart';
import 'package:medical_app/core/theming/colors.dart';
import 'package:medical_app/core/widgets/app_text_button.dart';
import 'package:medical_app/core/widgets/app_text_form_field.dart';
import 'package:medical_app/features/login/ui/widgets/terms_and_conditions_text.dart';

import '../../../../core/theming/styles.dart';
import '../widgets/dont_have_account_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;
  final FocusNode focusNode = FocusNode();
  bool hasFocus = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode.addListener(() {
      setState(() {
        hasFocus = focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    focusNode.dispose();
  }

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
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: 'Email'),
                      verticalSpace(18),
                      AppTextFormField(
                        focusNode: focusNode,
                        hintText: 'Password',
                        isObscureText: isObscure,
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            },
                            child: Icon(
                              isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: hasFocus
                                  ? ColorsManager.mainBlue
                                  : ColorsManager.gray,
                            )),
                      ),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                          buttonText: 'Login',
                          textStyle: TextStyles.font16WhiteSemiBold,
                          onPressed: () {}),
                      verticalSpace(16),
                      TermsAndConditionsText(),
                      verticalSpace(60),
                      DontHaveAccountText()
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
