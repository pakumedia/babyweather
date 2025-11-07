import 'package:flutter/cupertino.dart';

import 'screens/home_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/tips_screen.dart';
import 'theme/app_theme.dart';

class BabyOutfitSuggesterApp extends StatelessWidget {
  const BabyOutfitSuggesterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Baby Outfit Suggester',
      theme: AppTheme.theme,
      home: const _RootTabScaffold(),
    );
  }
}

class _RootTabScaffold extends StatefulWidget {
  const _RootTabScaffold();

  @override
  State<_RootTabScaffold> createState() => _RootTabScaffoldState();
}

class _RootTabScaffoldState extends State<_RootTabScaffold> {
  late final CupertinoTabController _controller;

  final List<Widget> _tabs = const [
    HomeScreen(),
    TipsScreen(),
    SettingsScreen(),
  ];

  final List<BottomNavigationBarItem> _items = const [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.house),
      activeIcon: Icon(CupertinoIcons.house_fill),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.sparkles),
      activeIcon: Icon(CupertinoIcons.sparkles),
      label: 'Tips',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.gear),
      activeIcon: Icon(CupertinoIcons.gear_solid),
      label: 'Settings',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = CupertinoTabController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: _controller,
      tabBar: CupertinoTabBar(
        items: _items,
        backgroundColor: AppColors.barBackground,
        activeColor: AppColors.primary,
        inactiveColor: CupertinoDynamicColor.resolve(
          AppColors.textSecondary,
          context,
        ),
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(builder: (context) => _tabs[index]);
      },
    );
  }
}
