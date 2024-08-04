import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geekreep/interface/global/text_widgets/semibold_text.dart';
import 'package:geekreep/interface/global/text_widgets/standard_text.dart';
import 'package:geekreep/theme/paddings.dart';

class StandardButton extends StatelessWidget {
  const StandardButton({
    super.key,
    required this.onTap,
    required this.text,
    this.backgroundColour,
    this.textColour,
    this.padding,
    this.margin,
    this.roundness = 50.0,
    this.leadingIcon,
    this.border,
    required this.bold,
  });

  final Function onTap;
  final String text;
  final double roundness;
  final String? leadingIcon;
  final Color? backgroundColour;
  final Color? textColour;
  final double? margin;
  final EdgeInsets? padding;
  final Border? border;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: padding ?? const EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(
          horizontal: margin ?? Paddings.veryBig,
          vertical: Paddings.extraSmall,
        ),
        decoration: BoxDecoration(
          color: backgroundColour ?? Theme.of(context).colorScheme.onSurface,
          borderRadius: BorderRadius.circular(roundness),
          border: border ?? const Border(),
        ),
        child: Center(
          child: Stack(
            children: [
              Visibility(
                visible: leadingIcon != null,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: Paddings.extraSmall),
                    child: SvgPicture.asset('assets/icons/$leadingIcon'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: bold
                    ? SemiBoldBodyText(
                        text: text,
                        colour: textColour,
                      )
                    : StandardBodyText(
                        text: text,
                        colour: textColour,
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
