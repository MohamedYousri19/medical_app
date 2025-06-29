import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/helpers/constants.dart';
import 'package:medical_app/core/helpers/extensions.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/shared_pref.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  // fix text disappear in release mode
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser() ;
  runApp( DocApp(appRouter: AppRouter(),));
}

checkIfLoggedInUser() async {
  String? userToken =
  await SharedPrefHelper.getSecuredString(SharedPreferenceKeys.token);

  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
