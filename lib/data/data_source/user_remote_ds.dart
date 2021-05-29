import 'package:flutter_test_login/core/failure/failure.dart';
import 'package:flutter_test_login/core/http/http_client.dart';
import 'package:flutter_test_login/data/model/user/user_model.dart';
import 'package:flutter_test_login/domain/entities/user/user_entity.dart';
import 'package:injectable/injectable.dart';

abstract class UseRemoteDS {
  Future<UserEntity> getUser(String uid);
}

@Injectable(as: UseRemoteDS)
class UserRemoteDSImpl implements UseRemoteDS {
  static const userUrl =
      'https://my-json-server.typicode.com/carlosalito/fake_data/users';

  final HttpClient httpClient;
  UserRemoteDSImpl({required this.httpClient});

  @override
  Future<UserEntity> getUser(String uid) async {
    try {
      final _endpoint = '$userUrl?uid=$uid';
      final _userResponse = await httpClient.httpGet(_endpoint);
      if (_userResponse.statusCode == 200)
        return UserModel.fromJson(_userResponse.data[0]);
      else
        throw ServerFailure();
    } catch (error) {
      throw error;
    }
  }
}
