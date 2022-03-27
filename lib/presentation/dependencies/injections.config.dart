// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../business/auth/sign_in_client/bloc/sign_in_client_bloc.dart'
    as _i5;
import '../../business/auth/sign_up_client/bloc/sign_up_client_bloc.dart'
    as _i6;
import '../../persistence/remote/implements/auth_service.dart' as _i4;
import '../../persistence/remote/interfaces/i_auth_facade.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(() => _i4.AuthService());
  gh.factory<_i5.SignInClientBloc>(
      () => _i5.SignInClientBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i6.SignUpClientBloc>(
      () => _i6.SignUpClientBloc(get<_i3.IAuthFacade>()));
  return get;
}
