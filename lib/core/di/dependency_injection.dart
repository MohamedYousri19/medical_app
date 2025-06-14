import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medical_app/features/login/data/repos/login_repo.dart';
import 'package:medical_app/features/login/logic/login_cubit.dart';

import '../networking/api_services.dart';
import '../networking/dio_factory.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUpGetIt() async{
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
