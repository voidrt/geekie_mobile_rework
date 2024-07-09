import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geekreep/core/provider/greeting_message_provider.dart';
import 'package:geekreep/core/provider/user_authentication_helper.dart';
import 'package:geekreep/interface/global/buttons/standard_button.dart';
import 'package:geekreep/interface/global/text_widgets/semibold_text.dart';

class HomeScreenLayout extends ConsumerWidget {
  const HomeScreenLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SemiBoldStandardText(
              text: ref.watch(greetingMessageProvider),
            ),
            StandardButton(onTap: () => AuthHelper().signOut(), text: "salir")
          ],
        ),
      ),
    );
  }
}
