// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../app/view/app_view.dart' as _i3;
import '../auth/login/view/login_view.dart' as _i1;
import '../auth/register/view/register_view.dart' as _i2;
import '../chat/view/chat_details_view.dart' as _i7;
import '../chat/view/chat_list_view.dart' as _i6;
import '../chat/view/chat_view.dart' as _i5;
import '../home/view/home_view.dart' as _i4;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.LoginView());
    },
    RegisterRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.RegisterView());
    },
    AppRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AppView());
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomeView());
    },
    ChatRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChatView());
    },
    ChatListRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ChatListView());
    },
    ChatDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ChatDetailsRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i7.ChatDetailsView(key: args.key, chatRoomId: args.chatRoomId));
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: '/login', fullMatch: true),
        _i8.RouteConfig(LoginRoute.name, path: '/login'),
        _i8.RouteConfig(RegisterRoute.name, path: '/register'),
        _i8.RouteConfig(AppRoute.name, path: '/app', children: [
          _i8.RouteConfig(HomeRoute.name, path: 'home', parent: AppRoute.name),
          _i8.RouteConfig(ChatRoute.name,
              path: 'chat',
              parent: AppRoute.name,
              children: [
                _i8.RouteConfig('#redirect',
                    path: '',
                    parent: ChatRoute.name,
                    redirectTo: 'chat-list',
                    fullMatch: true),
                _i8.RouteConfig(ChatListRoute.name,
                    path: 'chat-list', parent: ChatRoute.name),
                _i8.RouteConfig(ChatDetailsRoute.name,
                    path: 'chat-details', parent: ChatRoute.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.LoginView]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.RegisterView]
class RegisterRoute extends _i8.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i3.AppView]
class AppRoute extends _i8.PageRouteInfo<void> {
  const AppRoute({List<_i8.PageRouteInfo>? children})
      : super(AppRoute.name, path: '/app', initialChildren: children);

  static const String name = 'AppRoute';
}

/// generated route for
/// [_i4.HomeView]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.ChatView]
class ChatRoute extends _i8.PageRouteInfo<void> {
  const ChatRoute({List<_i8.PageRouteInfo>? children})
      : super(ChatRoute.name, path: 'chat', initialChildren: children);

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i6.ChatListView]
class ChatListRoute extends _i8.PageRouteInfo<void> {
  const ChatListRoute() : super(ChatListRoute.name, path: 'chat-list');

  static const String name = 'ChatListRoute';
}

/// generated route for
/// [_i7.ChatDetailsView]
class ChatDetailsRoute extends _i8.PageRouteInfo<ChatDetailsRouteArgs> {
  ChatDetailsRoute({_i9.Key? key, required String chatRoomId})
      : super(ChatDetailsRoute.name,
            path: 'chat-details',
            args: ChatDetailsRouteArgs(key: key, chatRoomId: chatRoomId));

  static const String name = 'ChatDetailsRoute';
}

class ChatDetailsRouteArgs {
  const ChatDetailsRouteArgs({this.key, required this.chatRoomId});

  final _i9.Key? key;

  final String chatRoomId;

  @override
  String toString() {
    return 'ChatDetailsRouteArgs{key: $key, chatRoomId: $chatRoomId}';
  }
}
