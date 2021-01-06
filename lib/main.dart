
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/routing/router.dart';
import 'package:prime_clone/routing/routes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    /*SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));*/
    return MaterialApp(
      title: Strings.appName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: PageRouter.generateRoute,
      initialRoute: Routes.SplashRoute,
    );
  }
}
