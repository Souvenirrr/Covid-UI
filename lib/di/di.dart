import 'package:covidapp/main.dart';
import 'package:covidapp/src/navigator/navigation_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

initDI(){

  // common
  di.registerSingleton(NavigationService(navigatorKey));
  di.registerSingleton(() {
    Dio dio = Dio();
    return dio;
  }());

  //bloc


  //  repository

}