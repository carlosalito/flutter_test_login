import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_login/domain/entities/user/user_entity.dart';
import 'package:flutter_test_login/presentation/app/app.dart';
import 'package:flutter_test_login/presentation/app/controller/app_controller.dart';
import 'package:flutter_test_login/presentation/login/controller/login_controller.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/user/user_fixture.dart';
import 'login_widget_test.mocks.dart';

@GenerateMocks([
  LoginController,
  AppController,
])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockLoginController mockLoginController;
  late MockAppController mockAppController;

  setUpAll(() {
    mockAppController = MockAppController();
    mockLoginController = MockLoginController();

    final di = GetIt.instance;
    di.registerFactory<LoginController>(() => mockLoginController);
    di.registerFactory<AppController>(() => mockAppController);
  });

  testWidgets('Login into app', (WidgetTester tester) async {
    final UserEntity userMock = UserFixture().userEntity;
    final _pass = '123456';

    when(mockLoginController.login(email: userMock.email, password: _pass))
        .thenAnswer((_) async => userMock.uid);
    when(mockLoginController.getUser(userMock.uid))
        .thenAnswer((_) async => userMock);
    when(mockAppController.setUser(userMock)).thenReturn(null);
    when(mockAppController.user).thenReturn(userMock);

    await tester.pumpWidget(App());

    final _inputEmail = find.byKey(Key('email'));
    final _inputPassword = find.byKey(Key('password'));
    final _button = find.byType(ElevatedButton);

    expect(_inputEmail, findsOneWidget);
    expect(_inputPassword, findsOneWidget);
    expect(_button, findsOneWidget);

    await tester.enterText(_inputEmail, userMock.email);
    await tester.enterText(_inputPassword, _pass);

    await tester.tap(_button);
    await tester.pumpAndSettle();

    expect(find.text(userMock.name), findsOneWidget);
  });
}
