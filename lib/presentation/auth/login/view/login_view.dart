import 'package:auto_route/auto_route.dart';
import 'package:chat_case_study/application/auth/signin/signin_cubit.dart';
import 'package:chat_case_study/application/auth/signin/signin_state.dart';
import 'package:chat_case_study/core/widgets/base_widgets.dart';
import 'package:chat_case_study/presentation/_core/base_view.dart';
import 'package:chat_case_study/presentation/auth/register/view/register_view.dart';
import 'package:chat_case_study/presentation/route/route_paths.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //return RegisterView();
    return BaseView<SigninCubit, SigninState>(
      onCubitReady: (cubit) {
        cubit.setContext(context);
      },
      builder: (context, cubit, state) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48.0),
          child: Stack(
            children: [
              // Align(
              //   alignment: Alignment.topRight,
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(vertical: 50),
              //     child: TextButton(
              //       onPressed: () {
              //         context.router.pushNamed(RoutePaths.REGISTER);
              //       },
              //       child: Text(
              //         "Kayıt ol",
              //         style: GoogleFonts.lato()
              //             .copyWith(color: Colors.black, fontSize: 16),
              //       ),
              //     ),
              //   ),
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: "user@email.com",
                    ),
                  ),
                  BaseWidgets.normalGap,
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "parola",
                    ),
                  ),
                  BaseWidgets.normalGap,
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 104, 78, 1),
                      ),
                      onPressed: () {
                        cubit.changeEmail(_emailController.text);
                        cubit.changePassword(_passwordController.text);
                        cubit.login();
                      },
                      child: Text(
                        "Giriş yap",
                        style: GoogleFonts.lato()
                            .copyWith(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
