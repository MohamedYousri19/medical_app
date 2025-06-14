import 'package:flutter/material.dart';
import 'package:medical_app/core/theming/colors.dart';
import 'package:medical_app/core/theming/styles.dart';

import '../../../../core/helpers/spacing.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasSpecialChar;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({super.key, required this.hasLowercase, required this.hasUppercase, required this.hasSpecialChar, required this.hasNumber, required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowercase),
        verticalSpace(2),
        buildValidationRow('At least 1 uppercase letter', hasUppercase),
        verticalSpace(2),
        buildValidationRow('At least 1 special character', hasSpecialChar),
        verticalSpace(2),
        buildValidationRow('At least 1 number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 8 characters', hasMinLength),
      ],
    );
  }

  buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray
        ),
        horizontalSpace(6),
        Text(
            text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
            decorationColor: Colors.green,
            decorationThickness: 2
          )
        )
      ],
    );
  }
}
