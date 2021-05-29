import 'package:flutter/material.dart';
import 'package:flutter_test_login/core/routes/named_routes.dart';
import 'package:flutter_test_login/presentation/home/home_screen.dart';
import 'package:flutter_test_login/presentation/login/login_screen.dart';
import 'package:overlay_support/overlay_support.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        title: 'Flutter tests',
        debugShowCheckedModeBanner: false,
        initialRoute: NamedRoutes.initial,
        routes: {
          NamedRoutes.initial: (context) => LoginScreen(),
          NamedRoutes.home: (context) => HomeScreen(),
        },
      ),
    );
  }
}
