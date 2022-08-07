// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:chat_case_study/application/auth/signin/signin_state.dart';
import 'package:chat_case_study/application/core/base_cubit.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/i_auth_repository.dart';
import '../../../presentation/route/route_paths.dart';

@injectable
class SigninCubit extends BaseCubit<SigninState> {
  final IAuthRepository _authRepo;
  SigninCubit(
    this._authRepo,
  ) : super(SigninState.initial());

  changeEmail(String val) => emit(state.copyWith(email: val));
  changePassword(String val) => emit(state.copyWith(password: val));

  login() async {
    emit(state.copyWith(isLoading: true));
    final failureOrUser = await _authRepo.signInWithEmailAndPassword(
      state.email,
      state.password,
    );
    emit(state.copyWith(isLoading: false));
    failureOrUser.fold(
      (failure) => emit(state.copyWith(failure: failure)),
      (user) => context.router.pushNamed(RoutePaths.APP),
    );
  }

  signup() async {
    emit(state.copyWith(isLoading: true));
    final failureOrUser = await _authRepo.signUpWithEmailAndPassword(
      state.email,
      state.password,
    );
    emit(state.copyWith(isLoading: false));
    failureOrUser.fold(
      (failure) => emit(state.copyWith(failure: failure)),
      (user) => context.router.pushNamed(RoutePaths.APP),
    );
  }
}
