import 'package:flutter/material.dart';
import 'package:flutter_test_login/core/di/injectable.dart';
import 'package:flutter_test_login/core/notifications/notification_service.dart';
import 'package:flutter_test_login/core/routes/named_routes.dart';
import 'package:flutter_test_login/presentation/app/controller/app_controller.dart';
import 'package:flutter_test_login/presentation/login/controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController =
      TextEditingController(text: 'test@test.com');
  final TextEditingController _passwordController =
      TextEditingController(text: '123456');

  final LoginController controller = getIt<LoginController>();
  final AppController appController = getIt<AppController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              key: Key('email'),
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: 'E-mail'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              key: Key('password'),
              controller: _passwordController,
              decoration: InputDecoration(hintText: 'Senha'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _login(context),
              child: Text('Logar'),
            ),
          ],
        ),
      ),
    );
  }

  _login(BuildContext context) async {
    try {
      final _uid = await controller.login(
          email: _emailController.text, password: _passwordController.text);
      final _user = await controller.getUser(_uid);
      appController.setUser(_user);
      Navigator.of(context).pushReplacementNamed(NamedRoutes.home);
    } catch (e) {
      AppNotifications.showToastError('Erro ao realizar login');
    }
  }
}
