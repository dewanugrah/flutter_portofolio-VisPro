import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/screen_experience.dart';
import 'package:flutter_portofolio/screens/screen_home.dart';
import 'package:flutter_portofolio/screens/screen_project.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _screens = [
    const ScreenHome(),
    const ScreenAbout(),
    const ScreenProject()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Portofolio')),
      body: PageTransitionSwitcher(
        // set animasi untuk transisi antar-section
        transitionBuilder: (Widget child, Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation) {
          return SharedAxisTransition(
            transitionType: SharedAxisTransitionType.horizontal,
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Experience"),
          BottomNavigationBarItem(icon: Icon(Icons.local_library), label: "Project"),
        ],
        onTap: (newIndex) => setState(() => _currentIndex = newIndex),
      ),
    );
  }
}
