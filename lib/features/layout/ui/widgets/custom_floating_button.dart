import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:medical_app/core/routing/routes.dart';
import 'package:medical_app/core/theming/colors.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.h,
      width: 65.w,
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        onPressed: () {
          Navigator.pushNamed(context, Routes.searchScreen);
        },
        backgroundColor: ColorsManager.mainBlue,
        child: Icon(IconBroken.Search , color:Colors.white,size: 30,),
      ),
    );
  }
}
