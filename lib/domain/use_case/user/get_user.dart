import 'package:dartz/dartz.dart';
import 'package:flutter_test_login/core/failure/failure.dart';
import 'package:flutter_test_login/domain/entities/user/user_entity.dart';
import 'package:flutter_test_login/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUser {
  final USerRepository userRepository;

  GetUser({required this.userRepository});

  Future<Either<Failure, UserEntity>> call(String uid) {
    return userRepository.getUser(uid);
  }
}
