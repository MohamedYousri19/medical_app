import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/theming/styles.dart';

import '../../../../core/theming/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Mohamed',
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              'How Are You?',
              style: TextStyles.font13GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorsManager.moreLightGray,
          child: SvgPicture.asset(
            'assets/svgs/notification.svg',
          ),
        )
      ]
    );
  }
}
