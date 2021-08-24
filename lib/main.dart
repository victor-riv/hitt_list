import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';
import 'package:hiit_list/routes.dart';

void main() {
  runApp(CFRouterScope(
      initialRoute: HiitListRouter.initialRoute,
      routeGenerator: HiitListRouter.generate,
      builder: (context) => MaterialApp.router(
            routeInformationParser: CFRouteInformationParser(),
            routerDelegate: CFRouterDelegate(context),
            debugShowCheckedModeBanner: false,
          )));
}
