import 'package:auto_route/auto_route.dart';
import 'package:chat_case_study/presentation/route/router.gr.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';
import 'application/auth/auth_cubit.dart';
import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Environment.dev);
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
       BlocProvider(
          create: (context) => getIt<AuthCubit>(),
          lazy: false,
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.nunitoSansTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        routerDelegate: AutoRouterDelegate(
          appRouter,
          // navigatorObservers: () => [
          //   FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
          // ],
        ),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}
