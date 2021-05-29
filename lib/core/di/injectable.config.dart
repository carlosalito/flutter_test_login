// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_source/user_remote_ds.dart' as _i7;
import '../../data/repositories/auth_repository_impl.dart' as _i4;
import '../../data/repositories/user_repository_impl.dart' as _i10;
import '../../domain/repositories/auth_repository.dart' as _i3;
import '../../domain/repositories/user_repository.dart' as _i9;
import '../../domain/use_case/auth/sign_in.dart' as _i5;
import '../../domain/use_case/auth/sign_out.dart' as _i6;
import '../../domain/use_case/user/get_user.dart' as _i11;
import '../../presentation/app/controller/app_controller.dart' as _i13;
import '../../presentation/login/controller/login_controller.dart' as _i12;
import '../http/http_client.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthRepository>(() => _i4.AuthRepositoryImpl());
  gh.factory<_i5.SignIn>(
      () => _i5.SignIn(authRepository: get<_i3.AuthRepository>()));
  gh.factory<_i6.SignOut>(
      () => _i6.SignOut(authRepository: get<_i3.AuthRepository>()));
  gh.factory<_i7.UseRemoteDS>(
      () => _i7.UserRemoteDSImpl(httpClient: get<_i8.HttpClient>()));
  gh.factory<_i9.USerRepository>(
      () => _i10.UserRepositoryImpl(useRemoteDS: get<_i7.UseRemoteDS>()));
  gh.factory<_i11.GetUser>(
      () => _i11.GetUser(userRepository: get<_i9.USerRepository>()));
  gh.factory<_i12.LoginController>(() => _i12.LoginController(
      signInUseCase: get<_i5.SignIn>(), getUserUseCase: get<_i11.GetUser>()));
  gh.singleton<_i8.HttpClient>(_i8.HttpClient());
  gh.singleton<_i13.AppController>(
      _i13.AppController(signOutUseCase: get<_i6.SignOut>()));
  return get;
}
