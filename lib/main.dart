import 'package:flutter/material.dart';
import 'package:tursnuov_default_project/ui/routes/app_routes.dart';
import 'package:tursnuov_default_project/ui/routes/routes_name.dart';
void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.initial,
      onGenerateRoute: AppRoutesName.genereteRoute,
    );
  }
}
