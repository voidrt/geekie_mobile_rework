import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geekreep/core/provider/user_authentication_helper.dart';

final Provider<String> greetingMessageProvider = Provider(
  (ref) {
    String timeGreeting() {
      var currentTime = DateTime.now().hour;

      if (currentTime <= 11.59) {
        return 'Bom dia';
      } else if (currentTime > 12 && currentTime <= 17.59) {
        return 'Boa tarde';
      }
      return 'Boa noite';
    }

    final user = AuthHelper().currentUser;
    final String username = user!.email!.substring(
      0,
      user.email!.indexOf('@'),
    );

    return '${timeGreeting()}, $username.';
  },
);
