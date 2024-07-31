import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geekreep/interface/home/children/user_subjects/user_subjects_screen.dart';
import 'package:geekreep/interface/home/children/minha_semana.dart';
import 'package:geekreep/interface/home/children/profile.dart';
import 'package:geekreep/interface/home/navigation/custom_navigation_bar.dart';

class HomeScreenLayout extends ConsumerStatefulWidget {
  const HomeScreenLayout({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeScreenLayoutState();
}

class _HomeScreenLayoutState extends ConsumerState<HomeScreenLayout> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        body: SafeArea(
          child: TabBarView(
            children: [
              MateriasScreen(
                screenSize: mediaQuery.size,
              ),
              const MinhaSemanaScreen(),
              const ProfileScreen(),
            ],
          ),
        ),
        bottomNavigationBar: CustomNavigationBar(query: mediaQuery),
      ),
    );
  }
}
