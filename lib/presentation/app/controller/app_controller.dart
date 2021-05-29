import 'package:flutter_test_login/domain/entities/user/user_entity.dart';
import 'package:flutter_test_login/domain/use_case/auth/sign_out.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

@singleton
class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  final SignOut signOutUseCase;

  _AppControllerBase({
    required this.signOutUseCase,
  });

  @observable
  UserEntity? user;

  @action
  setUser(UserEntity value) {
    user = value;
  }

  clearUser() {
    user = null;
  }

  @action
  Future<void> signOut() async {
    try {
      await signOutUseCase();
      clearUser();
    } catch (error) {
      throw error;
    }
  }
}
