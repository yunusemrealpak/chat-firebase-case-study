import 'package:chat_case_study/application/core/base_state.dart';
import 'package:chat_case_study/domain/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_state.freezed.dart';

@freezed
class SigninState extends BaseState with _$SigninState {
  const factory SigninState({
    @Default("") String email,
    @Default("") String password,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _SigninState;
  factory SigninState.initial() => const SigninState();
}