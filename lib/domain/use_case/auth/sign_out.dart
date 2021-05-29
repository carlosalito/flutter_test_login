import 'package:dartz/dartz.dart';
import 'package:flutter_test_login/core/failure/failure.dart';
import 'package:flutter_test_login/core/success/success.dart';
import 'package:flutter_test_login/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignOut {
  final AuthRepository authRepository;

  SignOut({required this.authRepository});

  Future<Either<Failure, Success>> call() {
    return authRepository.signOut();
  }
}
