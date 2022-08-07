import 'package:chat_case_study/application/auth/signin/signin_cubit.dart';
import 'package:chat_case_study/application/auth/signin/signin_state.dart';
import 'package:chat_case_study/presentation/_core/base_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SigninCubit, SigninState>(
      builder: (context, cubit, state) => Scaffold(
        body: Center(
          child: Text('LoginView'),
        ),
      ),
    );
  }
}
