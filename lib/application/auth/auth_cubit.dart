import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_repository.dart';
import '../../domain/auth/model/user.dart';
import '../core/base_cubit.dart';
import 'auth_state.dart';

@injectable
class AuthCubit extends BaseCubit<AuthState> {
  late final IAuthRepository _authRepo;
  late StreamSubscription<User?> _authUserSubscription;

  AuthCubit(this._authRepo) : super(AuthState.empty()) {
    _authUserSubscription =
        _authRepo.authStateChanges.listen(_listenAuthStateChangesStream);
  }

  Future<void> _listenAuthStateChangesStream(User? authUser) async {
    emit(state.copyWith(user: authUser));
  }

  Future<void> signOut() async {
    await _authRepo.signOut();
  }

  @override
  Future<void> close() async {
    await _authUserSubscription.cancel();
    super.close();
  }
}
