import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test_login/core/failure/failure.dart';
import 'package:flutter_test_login/core/success/success.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserCredential>> signIn(
      {required String email, required String password});

  Future<Either<Failure, Success>> signOut();
}
