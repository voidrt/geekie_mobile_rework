import 'package:flutter/material.dart';
import 'package:geekreep/theme/paddings.dart';
import 'package:line_icons/line_icons.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight / 16,
      margin: const EdgeInsets.symmetric(
        horizontal: Paddings.defaultSize,
        vertical: Paddings.small,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        border: Border.all(
          width: 0.5,
          color: Theme.of(context).colorScheme.surface,
        ),
        color: Theme.of(context).colorScheme.onSurface,
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: Paddings.defaultSize),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              LineIcons.search,
            ),
          ],
        ),
      ),
    );
  }
}
