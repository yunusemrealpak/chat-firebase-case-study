import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chat_case_study/presentation/app/view/app_view.dart';
import 'package:chat_case_study/presentation/auth/login/view/login_view.dart';
import 'package:chat_case_study/presentation/auth/register/view/register_view.dart';
import 'package:chat_case_study/presentation/chat/view/chat_details_view.dart';
import 'package:chat_case_study/presentation/chat/view/chat_list_view.dart';
import 'package:chat_case_study/presentation/chat/view/chat_view.dart';
import '../home/view/home_view.dart';
import 'route_paths.dart';

@MaterialAutoRouter(
  replaceInRouteName: "View,Route",
  routes: [
    AutoRoute(
      path: RoutePaths.LOGIN,
      page: LoginView,
      initial: true,
    ),
    AutoRoute(
      path: RoutePaths.REGISTER,
      page: RegisterView,
    ),
    AutoRoute(
      path: RoutePaths.APP,
      page: AppView,
      children: [
        AutoRoute(
          path: RoutePaths.HOME,
          page: HomeView,
        ),
        AutoRoute(
          path: RoutePaths.CHAT,
          page: ChatView,
          children: [
            AutoRoute(
              path: RoutePaths.CHAT_LIST,
              page: ChatListView,
              initial: true,
            ),
            AutoRoute(
              path: RoutePaths.CHAT_DETAILS,
              page: ChatDetailsView,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
