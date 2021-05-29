import 'package:dartz/dartz.dart';
import 'package:flutter_test_login/core/failure/failure.dart';
import 'package:flutter_test_login/data/data_source/user_remote_ds.dart';
import 'package:flutter_test_login/domain/entities/user/user_entity.dart';
import 'package:flutter_test_login/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: USerRepository)
class UserRepositoryImpl implements USerRepository {
  final UseRemoteDS useRemoteDS;

  UserRepositoryImpl({required this.useRemoteDS});

  @override
  Future<Either<Failure, UserEntity>> getUser(String uid) async {
    try {
      final _user = await useRemoteDS.getUser(uid);
      return right(_user);
    } catch (e) {
      return left(ServerFailure());
    }
  }
}
