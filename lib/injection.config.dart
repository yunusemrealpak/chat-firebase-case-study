// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i8;
import 'application/auth/signin/signin_cubit.dart' as _i7;
import 'application/chat/chat_cubit.dart' as _i9;
import 'domain/auth/i_auth_repository.dart' as _i3;
import 'domain/chat/i_firestore_repository.dart' as _i5;
import 'infrastructure/auth/auth_repository.dart' as _i4;
import 'infrastructure/chat/firestore_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthRepository>(() => _i4.AuthRepository());
  gh.factory<_i5.IFirestoreRepository>(() => _i6.FirestoreRepository());
  gh.factory<_i7.SigninCubit>(
      () => _i7.SigninCubit(get<_i3.IAuthRepository>()));
  gh.factory<_i8.AuthCubit>(() => _i8.AuthCubit(get<_i3.IAuthRepository>()));
  gh.factory<_i9.ChatCubit>(() => _i9.ChatCubit(
      get<_i3.IAuthRepository>(), get<_i5.IFirestoreRepository>()));
  return get;
}
