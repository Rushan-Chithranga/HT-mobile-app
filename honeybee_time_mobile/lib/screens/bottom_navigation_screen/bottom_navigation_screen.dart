import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/providers/bottom_navbar_provider/bottom_navbar_provider.dart';
import 'package:honeybee_time_mobile/global/providers/color_provider/color_provider.dart';
import 'package:honeybee_time_mobile/global/providers/timer_provider/timer_provider.dart';
import 'package:honeybee_time_mobile/screens/bottom_navigation_screen/widgets/bottom_navigation/bottom_navigation.dart';
import 'package:honeybee_time_mobile/screens/more/more.dart';
import 'package:honeybee_time_mobile/screens/timer_page/timer_page.dart';
import 'package:provider/provider.dart';

class BottomNavigationScreen extends StatefulWidget {
  static const routeName = '/bottom_navigation';
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  final screens = [
    const TimerPage(),
    const TimerPage(),
    const TimerPage(),
    const TimerPage(),
    const More(),
  ];
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavbarProvider>(
            create: (context) => BottomNavbarProvider()),
        ChangeNotifierProvider<ColorProvider>(create: (_) => ColorProvider()),
        ChangeNotifierProvider<TimerProvider>(create: (_) => TimerProvider()),
      ],
      child: SafeArea(child: Consumer<BottomNavbarProvider>(
          builder: (context, bottomNavbarProvider, child) {
        return Scaffold(
            body: screens[bottomNavbarProvider.currentIndex],
            bottomNavigationBar: const BottomNavigation());
      })),
    );
  }
}
