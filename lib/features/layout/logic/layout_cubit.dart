import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/features/home/ui/home_screen.dart';
import 'package:medical_app/features/layout/logic/layout_state.dart';

import '../../../core/di/dependency_injection.dart';
import '../../home/logic/home_cubit.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [
    BlocProvider(
        create: (BuildContext context) =>
            getIt.get<HomeCubit>()..getSpecializations(),
        child: HomeScreen()),
    BlocProvider(
        create: (BuildContext context) =>
        getIt.get<HomeCubit>()..getSpecializations(),
        child: HomeScreen()),
    Container(),
    BlocProvider(
        create: (BuildContext context) =>
        getIt.get<HomeCubit>()..getSpecializations(),
        child: HomeScreen()),
    BlocProvider(
        create: (BuildContext context) =>
        getIt.get<HomeCubit>()..getSpecializations(),
        child: HomeScreen()),
  ];
  int selectIndex = 0;

  void changeBottomNav(int index) {
    selectIndex = index;
    emit(ChangeNavState());
  }
}
