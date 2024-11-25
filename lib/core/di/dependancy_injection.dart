import 'package:appointment_booking_app/features/login/logic/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repos/login_repo.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt=GetIt.instance;
Future<void> setUpGetIt()async{
  //Dio & ApiServices
  Dio dio=DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(()=>LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(()=>LoginCubit(getIt()));




}
