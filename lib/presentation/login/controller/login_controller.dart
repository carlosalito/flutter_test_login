import 'package:flutter_test_login/domain/entities/user/user_entity.dart';
import 'package:flutter_test_login/domain/use_case/auth/sign_in.dart';
import 'package:flutter_test_login/domain/use_case/user/get_user.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

@injectable
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final SignIn signInUseCase;
  final GetUser getUserUseCase;

  _LoginControllerBase({
    required this.signInUseCase,
    required this.getUserUseCase,
  });

  @action
  Future<String> login(
      {required String email, required String password}) async {
    try {
      final _response = await signInUseCase(email: email, password: password);
      return _response.fold((failure) => throw failure,
          (userCredential) => userCredential.user!.uid);
    } catch (error) {
      throw error;
    }
  }

  @action
  Future<UserEntity> getUser(String uid) async {
    try {
      final _response = await getUserUseCase(uid);
      return _response.fold((failure) => throw failure, (user) => user);
    } catch (error) {
      throw error;
    }
  }
}
