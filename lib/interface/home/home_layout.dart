import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geekreep/interface/home/children/user_subjects/user_subjects_screen.dart';
import 'package:geekreep/interface/home/children/minha_semana.dart';
import 'package:geekreep/interface/home/children/profile.dart';
import 'package:geekreep/interface/home/navigation/navigation_bar.dart';

class HomeScreenLayout extends ConsumerStatefulWidget {
  const HomeScreenLayout({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeScreenLayoutState();
}

class _HomeScreenLayoutState extends ConsumerState<HomeScreenLayout> {
  int currentIndex = 1;

  void changeTab(int index) {
    setState(() => currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      bottomNavigationBar: AppNavigationBar(
        currentIndex: currentIndex,
        onTap: changeTab,
      ),
      body: SafeArea(
        child: [
          MateriasScreen(
            screenSize: mediaQuery.size,
          ),
          const MinhaSemanaScreen(),
          const ProfileScreen(),
        ].elementAt(currentIndex),
      ),
    );
  }
}
