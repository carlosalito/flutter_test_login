import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test_login/core/failure/failure.dart';
import 'package:flutter_test_login/core/success/success.dart';
import 'package:flutter_test_login/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Either<Failure, UserCredential>> signIn(
      {required String email, required String password}) async {
    try {
      final _userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return right(_userCredential);
    } catch (e) {
      return left(AuthFailure());
    }
  }

  @override
  Future<Either<Failure, Success>> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      return right(VoidSuccess());
    } catch (e) {
      return left(AuthFailure());
    }
  }
}
