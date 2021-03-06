// Mocks generated by Mockito 5.0.9 from annotations
// in flutter_test_login/test/unit/login/login_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i9;

import 'package:dartz/dartz.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:firebase_auth_platform_interface/src/action_code_settings.dart'
    as _i17;
import 'package:firebase_auth_platform_interface/src/auth_credential.dart'
    as _i16;
import 'package:firebase_auth_platform_interface/src/id_token_result.dart'
    as _i6;
import 'package:firebase_auth_platform_interface/src/providers/phone_auth.dart'
    as _i18;
import 'package:firebase_auth_platform_interface/src/user_info.dart' as _i15;
import 'package:firebase_auth_platform_interface/src/user_metadata.dart' as _i5;
import 'package:flutter_test_login/core/failure/failure.dart' as _i10;
import 'package:flutter_test_login/core/success/success.dart' as _i14;
import 'package:flutter_test_login/domain/entities/user/user_entity.dart'
    as _i12;
import 'package:flutter_test_login/domain/repositories/auth_repository.dart'
    as _i2;
import 'package:flutter_test_login/domain/repositories/user_repository.dart'
    as _i4;
import 'package:flutter_test_login/domain/use_case/auth/sign_in.dart' as _i8;
import 'package:flutter_test_login/domain/use_case/auth/sign_out.dart' as _i13;
import 'package:flutter_test_login/domain/use_case/user/get_user.dart' as _i11;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeAuthRepository extends _i1.Fake implements _i2.AuthRepository {}

class _FakeEither<L, R> extends _i1.Fake implements _i3.Either<L, R> {}

class _FakeUSerRepository extends _i1.Fake implements _i4.USerRepository {}

class _FakeUserMetadata extends _i1.Fake implements _i5.UserMetadata {}

class _FakeIdTokenResult extends _i1.Fake implements _i6.IdTokenResult {}

class _FakeUserCredential extends _i1.Fake implements _i7.UserCredential {}

class _FakeConfirmationResult extends _i1.Fake
    implements _i7.ConfirmationResult {}

class _FakeUser extends _i1.Fake implements _i7.User {}

/// A class which mocks [SignIn].
///
/// See the documentation for Mockito's code generation for more information.
class MockSignIn extends _i1.Mock implements _i8.SignIn {
  MockSignIn() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.AuthRepository get authRepository =>
      (super.noSuchMethod(Invocation.getter(#authRepository),
          returnValue: _FakeAuthRepository()) as _i2.AuthRepository);
  @override
  _i9.Future<_i3.Either<_i10.Failure, _i7.UserCredential>> call(
          {String? email, String? password}) =>
      (super.noSuchMethod(
          Invocation.method(#call, [], {#email: email, #password: password}),
          returnValue:
              Future<_i3.Either<_i10.Failure, _i7.UserCredential>>.value(
                  _FakeEither<_i10.Failure, _i7.UserCredential>())) as _i9
          .Future<_i3.Either<_i10.Failure, _i7.UserCredential>>);
}

/// A class which mocks [GetUser].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetUser extends _i1.Mock implements _i11.GetUser {
  MockGetUser() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.USerRepository get userRepository =>
      (super.noSuchMethod(Invocation.getter(#userRepository),
          returnValue: _FakeUSerRepository()) as _i4.USerRepository);
  @override
  _i9.Future<_i3.Either<_i10.Failure, _i12.UserEntity>> call(String? uid) =>
      (super.noSuchMethod(Invocation.method(#call, [uid]),
          returnValue: Future<_i3.Either<_i10.Failure, _i12.UserEntity>>.value(
              _FakeEither<_i10.Failure, _i12.UserEntity>())) as _i9
          .Future<_i3.Either<_i10.Failure, _i12.UserEntity>>);
}

/// A class which mocks [SignOut].
///
/// See the documentation for Mockito's code generation for more information.
class MockSignOut extends _i1.Mock implements _i13.SignOut {
  MockSignOut() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.AuthRepository get authRepository =>
      (super.noSuchMethod(Invocation.getter(#authRepository),
          returnValue: _FakeAuthRepository()) as _i2.AuthRepository);
  @override
  _i9.Future<_i3.Either<_i10.Failure, _i14.Success>> call() =>
      (super.noSuchMethod(Invocation.method(#call, []),
              returnValue: Future<_i3.Either<_i10.Failure, _i14.Success>>.value(
                  _FakeEither<_i10.Failure, _i14.Success>()))
          as _i9.Future<_i3.Either<_i10.Failure, _i14.Success>>);
}

/// A class which mocks [UserCredential].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserCredential extends _i1.Mock implements _i7.UserCredential {
  MockUserCredential() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String toString() =>
      (super.noSuchMethod(Invocation.method(#toString, []), returnValue: '')
          as String);
}

/// A class which mocks [User].
///
/// See the documentation for Mockito's code generation for more information.
class MockUser extends _i1.Mock implements _i7.User {
  MockUser() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get emailVerified =>
      (super.noSuchMethod(Invocation.getter(#emailVerified), returnValue: false)
          as bool);
  @override
  bool get isAnonymous =>
      (super.noSuchMethod(Invocation.getter(#isAnonymous), returnValue: false)
          as bool);
  @override
  _i5.UserMetadata get metadata =>
      (super.noSuchMethod(Invocation.getter(#metadata),
          returnValue: _FakeUserMetadata()) as _i5.UserMetadata);
  @override
  List<_i15.UserInfo> get providerData =>
      (super.noSuchMethod(Invocation.getter(#providerData),
          returnValue: <_i15.UserInfo>[]) as List<_i15.UserInfo>);
  @override
  String get uid =>
      (super.noSuchMethod(Invocation.getter(#uid), returnValue: '') as String);
  @override
  _i9.Future<void> delete() =>
      (super.noSuchMethod(Invocation.method(#delete, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i9.Future<void>);
  @override
  _i9.Future<String> getIdToken([bool? forceRefresh = false]) =>
      (super.noSuchMethod(Invocation.method(#getIdToken, [forceRefresh]),
          returnValue: Future<String>.value('')) as _i9.Future<String>);
  @override
  _i9.Future<_i6.IdTokenResult> getIdTokenResult(
          [bool? forceRefresh = false]) =>
      (super.noSuchMethod(Invocation.method(#getIdTokenResult, [forceRefresh]),
              returnValue:
                  Future<_i6.IdTokenResult>.value(_FakeIdTokenResult()))
          as _i9.Future<_i6.IdTokenResult>);
  @override
  _i9.Future<_i7.UserCredential> linkWithCredential(
          _i16.AuthCredential? credential) =>
      (super.noSuchMethod(Invocation.method(#linkWithCredential, [credential]),
              returnValue:
                  Future<_i7.UserCredential>.value(_FakeUserCredential()))
          as _i9.Future<_i7.UserCredential>);
  @override
  _i9.Future<_i7.ConfirmationResult> linkWithPhoneNumber(String? phoneNumber,
          [_i7.RecaptchaVerifier? verifier]) =>
      (super.noSuchMethod(
              Invocation.method(#linkWithPhoneNumber, [phoneNumber, verifier]),
              returnValue: Future<_i7.ConfirmationResult>.value(
                  _FakeConfirmationResult()))
          as _i9.Future<_i7.ConfirmationResult>);
  @override
  _i9.Future<_i7.UserCredential> reauthenticateWithCredential(
          _i16.AuthCredential? credential) =>
      (super.noSuchMethod(
              Invocation.method(#reauthenticateWithCredential, [credential]),
              returnValue:
                  Future<_i7.UserCredential>.value(_FakeUserCredential()))
          as _i9.Future<_i7.UserCredential>);
  @override
  _i9.Future<void> reload() =>
      (super.noSuchMethod(Invocation.method(#reload, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> sendEmailVerification(
          [_i17.ActionCodeSettings? actionCodeSettings]) =>
      (super.noSuchMethod(
          Invocation.method(#sendEmailVerification, [actionCodeSettings]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i9.Future<void>);
  @override
  _i9.Future<_i7.User> unlink(String? providerId) =>
      (super.noSuchMethod(Invocation.method(#unlink, [providerId]),
              returnValue: Future<_i7.User>.value(_FakeUser()))
          as _i9.Future<_i7.User>);
  @override
  _i9.Future<void> updateEmail(String? newEmail) =>
      (super.noSuchMethod(Invocation.method(#updateEmail, [newEmail]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> updatePassword(String? newPassword) =>
      (super.noSuchMethod(Invocation.method(#updatePassword, [newPassword]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> updatePhoneNumber(
          _i18.PhoneAuthCredential? phoneCredential) =>
      (super.noSuchMethod(
          Invocation.method(#updatePhoneNumber, [phoneCredential]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> updateProfile({String? displayName, String? photoURL}) =>
      (super.noSuchMethod(
          Invocation.method(#updateProfile, [],
              {#displayName: displayName, #photoURL: photoURL}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> verifyBeforeUpdateEmail(String? newEmail,
          [_i17.ActionCodeSettings? actionCodeSettings]) =>
      (super.noSuchMethod(
          Invocation.method(
              #verifyBeforeUpdateEmail, [newEmail, actionCodeSettings]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i9.Future<void>);
  @override
  String toString() =>
      (super.noSuchMethod(Invocation.method(#toString, []), returnValue: '')
          as String);
}
