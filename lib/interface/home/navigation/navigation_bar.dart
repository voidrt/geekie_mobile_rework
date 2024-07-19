import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final onTap;

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      elevation: 0,
      showUnselectedLabels: false,
      onTap: widget.onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            LineIcons.book,
          ),
          label: 'Materias',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            LineIcons.map,
          ),
          label: 'Minha Semana',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            LineIcons.user,
          ),
          label: 'Perfil',
        ),
      ],
    );
  }
}
