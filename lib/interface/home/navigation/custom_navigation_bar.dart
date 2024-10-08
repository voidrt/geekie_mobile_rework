import 'package:flutter/material.dart';
import 'package:geekreep/theme/paddings.dart';
import 'package:geekreep/theme/text_theme.dart';
import 'package:line_icons/line_icons.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    super.key,
    required this.query,
  });

  final MediaQueryData query;

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    print(widget.query.size.height / 12);
    return SafeArea(
      child: Container(
        height: widget.query.size.height / 12,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        margin: const EdgeInsets.symmetric(
          horizontal: Paddings.small,
          vertical: Paddings.medium,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurface,
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: TabBar(
          labelStyle: GeekieTextStyle.subtitleText,
          labelColor: Theme.of(context).colorScheme.primary,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 5,
          unselectedLabelStyle: const TextStyle(fontSize: 0),
          dividerColor: Colors.transparent,
          indicator: const BoxDecoration(),
          unselectedLabelColor:
              Theme.of(context).colorScheme.inverseSurface.withOpacity(0.7),
          tabs: const [
            Tab(
              text: 'Materias',
              iconMargin: EdgeInsets.symmetric(vertical: 2),
              icon: Icon(LineIcons.book, size: 25),
            ),
            Tab(
              text: 'Semana',
              iconMargin: EdgeInsets.symmetric(vertical: 2),
              icon: Icon(LineIcons.calendarWithWeekFocus, size: 25),
            ),
            Tab(
              text: 'Perfil',
              iconMargin: EdgeInsets.symmetric(vertical: 2),
              icon: Icon(LineIcons.user, size: 25),
            ),
          ],
        ),
      ),
    );
  }
}
