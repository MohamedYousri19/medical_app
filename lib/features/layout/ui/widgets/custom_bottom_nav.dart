import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:medical_app/core/theming/colors.dart';
import 'package:medical_app/features/layout/logic/layout_cubit.dart';

class CustomBottomNav extends StatelessWidget {
  final LayoutCubit cubit ;
  const CustomBottomNav({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 25.0,
      enableFeedback: false,
      type: BottomNavigationBarType.fixed,
      useLegacyColorScheme: false,
      unselectedItemColor: Colors.grey,
      selectedItemColor: ColorsManager.mainBlue,
      backgroundColor: Colors.white,
      elevation: 0.0,
      currentIndex: cubit.selectIndex,
      onTap: (index) {
        cubit.changeBottomNav(index);
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(IconBroken.Home), label: ''),
        BottomNavigationBarItem(
            icon: Icon(IconBroken.Chat), label: ''),
        BottomNavigationBarItem(icon: Container() , label: '' , ),
        BottomNavigationBarItem(
            icon: Icon(IconBroken.Calendar), label: ''),
        BottomNavigationBarItem(
            icon: Icon(IconBroken.Profile), label: ''),
      ],
    );
  }
}
