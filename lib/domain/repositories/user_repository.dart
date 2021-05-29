import 'package:dartz/dartz.dart';
import 'package:flutter_test_login/core/failure/failure.dart';
import 'package:flutter_test_login/domain/entities/user/user_entity.dart';

abstract class USerRepository {
  Future<Either<Failure, UserEntity>> getUser(String uid);
}
