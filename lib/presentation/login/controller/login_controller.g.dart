// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$loginAsyncAction = AsyncAction('_LoginControllerBase.login');

  @override
  Future<String> login({required String email, required String password}) {
    return _$loginAsyncAction
        .run(() => super.login(email: email, password: password));
  }

  final _$getUserAsyncAction = AsyncAction('_LoginControllerBase.getUser');

  @override
  Future<UserEntity> getUser(String uid) {
    return _$getUserAsyncAction.run(() => super.getUser(uid));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
