import 'package:covidapp/di/di.dart';
import 'package:covidapp/src/common/strings.dart';
import 'package:flutter/material.dart';
import 'src/navigator/route.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp(){
    initDI();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      initialRoute: route_home_page,
      onGenerateRoute: (settings) {
        return AppRoute.generateRoute(settings);
      },
    );
  }
}