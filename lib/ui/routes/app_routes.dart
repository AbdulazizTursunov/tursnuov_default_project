
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tursnuov_default_project/ui/routes/routes_name.dart';

import '../home/home-screen.dart';

class AppRoutesName {
  static Route genereteRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.initial:
        return MaterialPageRoute(
            builder: (context) =>  HomeScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("route mavjud emas"),
            ),
          );
        });
    }
  }
}
