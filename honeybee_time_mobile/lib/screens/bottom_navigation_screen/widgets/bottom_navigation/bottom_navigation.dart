import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/providers/bottom_navbar_provider/bottom_navbar_provider.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 2;
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
      Provider.of<BottomNavbarProvider>(context, listen: false)
          .updateCurrentIndex(currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: 24,
            height: 24,
            child: Image(
              image: currentIndex == 0
                  ? const AssetImage('assets/icons/dashboard_fill.png')
                  : const AssetImage('assets/icons/dashboard.png'),
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: 24,
            height: 24,
            child: Image(
              image: currentIndex == 1
                  ? const AssetImage('assets/icons/timesheets_fill.png')
                  : const AssetImage('assets/icons/timesheets.png'),
            ),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: 24,
            height: 24,
            child: Image(
                image: currentIndex == 2
                    ? const AssetImage('assets/icons/timer_fill.png')
                    : const AssetImage('assets/icons/timer.png')),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: 24,
            height: 24,
            child: Image(
              image: currentIndex == 3
                  ? const AssetImage('assets/icons/reports_fill.png')
                  : const AssetImage('assets/icons/reports.png'),
            ),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: 24,
            height: 24,
            child: Image(
              image: currentIndex == 4
                  ? const AssetImage('assets/icons/more_fill.png')
                  : const AssetImage('assets/icons/more.png'),
            ),
          ),
          label: 'Search',
        ),
      ],
      selectedItemColor: kMain_alpha_500,
      unselectedItemColor: kMain_beta_500,
      currentIndex: currentIndex,
      onTap: onTabTapped,
    );
  }
}
