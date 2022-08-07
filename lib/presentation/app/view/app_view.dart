import 'package:auto_route/auto_route.dart';
import 'package:chat_case_study/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import '../../route/router.gr.dart';

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  int _currentIndex = 0;

  changeCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoTabsRouter(
        routes: const [
          HomeRoute(),
          ChatRoute(),
        ],
        duration: const Duration(milliseconds: 400),
        builder: (context, child, animation) {
          final tabsRouter = context.tabsRouter;
          return Scaffold(
            body: FadeTransition(
              opacity: animation,
              child: child,
            ),
            bottomNavigationBar: buildBottomNavigationBar(tabsRouter),
          );
        },
      ),
    );
  }

  Container buildBottomNavigationBar(TabsRouter tabsRouter) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.white38, width: 1),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: context.theme.scaffoldBackgroundColor,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        onTap: (index) {
          changeCurrentIndex(index);
          tabsRouter.setActiveIndex(index);
        },
        currentIndex: tabsRouter.activeIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
