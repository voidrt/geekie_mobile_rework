import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geekreep/interface/global/buttons/standard_button.dart';
import 'package:geekreep/interface/global/icon_widgets/white_geekie_icon.dart';
import 'package:geekreep/interface/global/text_widgets/semibold_text.dart';
import 'package:geekreep/theme/paddings.dart';
import 'package:go_router/go_router.dart';

class LoginOptionsScreen extends ConsumerWidget {
  const LoginOptionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 7,
                  sigmaY: 7,
                ),
                child: Image.asset(
                  'assets/images/loginBgMobile.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Column(
              children: [
                const WhiteGeekieIcon(),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Paddings.veryBig,
                  ),
                  child: SemiBoldHeadlineText(
                    text: 'Acesse agora',
                    colour: Colors.white,
                  ),
                ),
                StandardButton(
                  bold: false,
                  onTap: () {
                    context.pushNamed('Geekie Login');
                  },
                  leadingIcon: 'geekieOneRedLogo.svg',
                  text: 'Com uma conta Geekie One',
                ),
                StandardButton(
                  bold: false,
                  onTap: () {},
                  leadingIcon: 'qrcode.svg',
                  text: 'Com QR Code - até 5º ano',
                ),
                SemiBoldBodyText(
                  text: 'ou',
                  padding: Paddings.extraSmall,
                  colour: Theme.of(context).colorScheme.surface,
                ),
                StandardButton(
                  bold: false,
                  onTap: () {},
                  leadingIcon: 'googleLogo.svg',
                  text: 'Acessar com Google',
                ),
                StandardButton(
                  bold: false,
                  onTap: () {},
                  leadingIcon: 'appleLogo.svg',
                  text: 'Acessar com Apple',
                ),
                StandardButton(
                  bold: false,
                  onTap: () {},
                  leadingIcon: 'microsoftLogo.svg',
                  text: 'Acessar com Microsoft',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: Paddings.small),
                  child: Divider(
                    indent: Paddings.veryBig,
                    endIndent: Paddings.veryBig,
                  ),
                ),
                StandardButton(
                  bold: true,
                  onTap: () {},
                  text: 'Ativar novo material',
                  textColour: Theme.of(context).colorScheme.surface,
                  backgroundColour: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
