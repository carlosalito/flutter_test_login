import 'package:flutter/material.dart';
import 'package:flutter_test_login/core/di/injectable.dart';
import 'package:flutter_test_login/core/notifications/notification_service.dart';
import 'package:flutter_test_login/core/routes/named_routes.dart';
import 'package:flutter_test_login/presentation/app/controller/app_controller.dart';

class HomeScreen extends StatelessWidget {
  final AppController appController = getIt<AppController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(appController.user?.name ?? ''),
            ElevatedButton(
                onPressed: () => _signOut(context), child: Text('Sair'))
          ],
        ),
      ),
    );
  }

  Future<void> _signOut(BuildContext context) async {
    try {
      await appController.signOut();
      Navigator.of(context).pushReplacementNamed(NamedRoutes.initial);
    } catch (e) {
      AppNotifications.showToastError('Erro ao deslogar');
    }
  }
}
