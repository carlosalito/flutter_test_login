import 'package:flutter/material.dart';
import 'package:flutter_test_login/core/di/injectable.dart' as di;
import 'package:flutter_test_login/presentation/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  runApp(App());
}
