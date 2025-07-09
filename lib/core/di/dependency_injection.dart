import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medical_app/core/networking/api_services.dart';
import 'package:medical_app/core/networking/dio_factory.dart';
import 'package:medical_app/features/home/data/apis/home_api_service.dart';
import 'package:medical_app/features/home/data/repos/home_repo.dart';
import 'package:medical_app/features/home/logic/home_cubit.dart';
import 'package:medical_app/features/layout/logic/layout_cubit.dart';
import 'package:medical_app/features/login/data/repos/login_repo.dart';
import 'package:medical_app/features/login/logic/login_cubit.dart';
import 'package:medical_app/features/search/data/repos/search_repos.dart';
import 'package:medical_app/features/search/logic/search_cubit.dart';
import 'package:medical_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:medical_app/features/sign_up/logic/sign_up_cubit.dart';


final GetIt getIt = GetIt.instance;

Future<void> setUpGetIt() async{
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

  // layout
  getIt.registerFactory<LayoutCubit>(() => LayoutCubit());

  // search
  getIt.registerLazySingleton<SearchRepo>(() => SearchRepo(getIt()));
  getIt.registerFactory<SearchCubit>(() => SearchCubit(getIt()));

}
