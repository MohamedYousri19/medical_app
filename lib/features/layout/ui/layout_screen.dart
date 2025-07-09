import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart' show IconBroken;
import 'package:medical_app/features/layout/logic/layout_cubit.dart';
import '../../../core/theming/colors.dart';
import '../logic/layout_state.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit,LayoutState>(
        builder: (BuildContext context, state) {
          var cubit = LayoutCubit.get(context) ;
          return Scaffold(
            body: cubit.screens[cubit.selectIndex],
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: SizedBox(
              height: 65.h,
              width: 65.w,
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                onPressed: () {
                },
                backgroundColor: ColorsManager.mainBlue,
                child: Icon(IconBroken.Search , color:Colors.white,size: 30,),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
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
            ),
          );
        },
    );
  }
}
