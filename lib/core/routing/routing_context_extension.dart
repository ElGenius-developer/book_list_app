import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension RoutingContextExtension on BuildContext {
  GoRouter get _router => GoRouter.of(this);


  void pop(dynamic result) => _router.pop(result);


  void pushNamed(String routeName, {dynamic arguments, Map<String, String> pathParameters = const {}}) => _router.pushNamed(routeName, extra: arguments, pathParameters: pathParameters);

  void pushReplacementNamed(String routeName, {dynamic arguments, Map<String, String> pathParameters = const {}}) => _router.pushReplacementNamed(routeName, extra: arguments, pathParameters: pathParameters);


}