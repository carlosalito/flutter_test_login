import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test_login/core/failure/failure.dart';
import 'package:flutter_test_login/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignIn {
  final AuthRepository authRepository;

  SignIn({required this.authRepository});

  Future<Either<Failure, UserCredential>> call(
      {required String email, required String password}) {
    return authRepository.signIn(email: email, password: password);
  }
}
