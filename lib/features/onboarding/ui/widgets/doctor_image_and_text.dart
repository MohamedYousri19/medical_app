import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/logo_with_low_opacity.svg'),
        Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withValues(alpha: 0.0),
                  ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.14 , 0.4]
              )
            ) ,
        child: Image(image: AssetImage('assets/images/doc.png'))),
        Positioned(
          bottom: 30.0,
          left: 0,
          right: 0,
          child: Text (
            'Best Doctor Appointment App',
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
