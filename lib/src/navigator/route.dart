import 'package:covidapp/src/common/strings.dart';
import 'package:covidapp/src/page/home_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  // ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case route_home_page:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}