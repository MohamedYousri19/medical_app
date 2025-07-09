import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/features/layout/logic/layout_cubit.dart';
import 'package:medical_app/features/layout/ui/widgets/custom_bottom_nav.dart';
import 'package:medical_app/features/layout/ui/widgets/custom_floating_button.dart';
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
            floatingActionButton: CustomFloatingButton(),
            bottomNavigationBar: CustomBottomNav(cubit: cubit,),
          );
        },
    );
  }
}
