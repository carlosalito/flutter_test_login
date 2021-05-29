import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_login/core/failure/failure.dart';
import 'package:flutter_test_login/domain/entities/user/user_entity.dart';
import 'package:flutter_test_login/domain/use_case/auth/sign_in.dart';
import 'package:flutter_test_login/domain/use_case/auth/sign_out.dart';
import 'package:flutter_test_login/domain/use_case/user/get_user.dart';
import 'package:flutter_test_login/presentation/app/controller/app_controller.dart';
import 'package:flutter_test_login/presentation/login/controller/login_controller.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/user/user_fixture.dart';
import 'login_test.mocks.dart';

@GenerateMocks([
  SignIn,
  GetUser,
  SignOut,
  UserCredential,
  User,
])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockSignIn mockSignIn;
  late MockGetUser mockGetUser;
  late MockSignOut mockSignOut;

  late LoginController loginController;
  late AppController appController;

  setUp(() {
    mockSignIn = MockSignIn();
    mockGetUser = MockGetUser();
    mockSignOut = MockSignOut();

    loginController = LoginController(
      signInUseCase: mockSignIn,
      getUserUseCase: mockGetUser,
    );

    appController = AppController(
      signOutUseCase: mockSignOut,
    );
  });

  test('When user call login, should return a valid firebase UID', () async {
    final _pass = '123456';
    final userEntityMock = UserFixture().userEntity;
    final userCredentialMock = MockUserCredential();
    final userMock = MockUser();

    when(mockSignIn.call(email: userEntityMock.email, password: _pass))
        .thenAnswer((_) async => right(userCredentialMock));
    when(userCredentialMock.user).thenReturn(userMock);
    when(userMock.uid).thenReturn(userEntityMock.uid);

    final String _uid = await loginController.login(
      email: userEntityMock.email,
      password: _pass,
    );

    expect(_uid, userEntityMock.uid);
  });

  test('When user call login, should return an AuthFailure error', () async {
    final _pass = '123456';
    final userEntityMock = UserFixture().userEntity;

    when(mockSignIn.call(email: userEntityMock.email, password: _pass))
        .thenAnswer((_) async => left(AuthFailure()));

    expect(
        () async => await loginController.login(
              email: userEntityMock.email,
              password: _pass,
            ),
        throwsA(isA<AuthFailure>()));
  });

  test('When user call get user data, should return a valid UserEntity',
      () async {
    final userEntityMock = UserFixture().userEntity;

    when(mockGetUser.call(userEntityMock.uid))
        .thenAnswer((_) async => right(userEntityMock));

    final UserEntity _user = await loginController.getUser(userEntityMock.uid);
    expect(_user, userEntityMock);
  });

  test('When user call get user data, should return a Server Failure',
      () async {
    final userEntityMock = UserFixture().userEntity;

    when(mockGetUser.call(userEntityMock.uid))
        .thenAnswer((_) async => left(ServerFailure()));

    expect(() async => await loginController.getUser(userEntityMock.uid),
        throwsA(isA<ServerFailure>()));
  });

  test('When set a user on appController, the user are applied', () {
    final userEntityMock = UserFixture().userEntity;
    appController.setUser(userEntityMock);
    expect(appController.user, userEntityMock);
  });
}
