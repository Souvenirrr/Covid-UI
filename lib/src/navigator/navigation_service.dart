import 'package:flutter/material.dart';

class NavigationService {
  GlobalKey<NavigatorState> navigatorKey;

  NavigationService(this.navigatorKey);

  Future<dynamic> pushNamed(String routeName, {Object arguments}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object arguments}) {
    return navigatorKey.currentState
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> push(Route route) {
    return navigatorKey.currentState.push(route);
  }

  void pop<T extends Object>([T result]) {
    navigatorKey.currentState.pop(result);
  }

  void popUntil(RoutePredicate predicate) {
    navigatorKey.currentState.popUntil(predicate);
  }

  void pushNamedAndRemoveUntil(String routeName, RoutePredicate predicate) {
    navigatorKey.currentState.pushNamedAndRemoveUntil(routeName, predicate);
  }
}