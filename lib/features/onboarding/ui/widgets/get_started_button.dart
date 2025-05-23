import 'package:flutter/material.dart';
import 'package:medical_app/core/helpers/extensions.dart';
import 'package:medical_app/core/theming/colors.dart';
import 'package:medical_app/core/theming/styles.dart';
import '../../../../core/routing/routes.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 52)
        ),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        ))
      ),
        onPressed: (){
        context.pushNamed(Routes.loginScreen);
        },
        child: Text(
          'Get Started',
          style: TextStyles.font16WhiteSemiBold,
        )
    );
  }
}
