import 'package:flutter/material.dart';
import 'package:geekreep/theme/paddings.dart';

class SemiBoldBodyText extends StatelessWidget {
  const SemiBoldBodyText({
    super.key,
    required this.text,
    this.colour,
    this.padding,
    this.overflow,
  });

  final String text;
  final Color? colour;
  final double? padding;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
              fontWeight: FontWeight.w600,
              color: colour ?? Theme.of(context).colorScheme.inverseSurface,
              overflow: overflow ?? TextOverflow.fade,
            ),
      ),
    );
  }
}

class SemiBoldHeadlineText extends StatelessWidget {
  const SemiBoldHeadlineText({
    super.key,
    required this.text,
    this.padding,
    this.colour,
    this.textAlign,
  });

  final String text;
  final double? padding;
  final Color? colour;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? Paddings.extraSmall),
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: colour ?? Theme.of(context).colorScheme.surface,
            ),
      ),
    );
  }
}
