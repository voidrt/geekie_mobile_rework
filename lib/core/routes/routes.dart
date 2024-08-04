import 'package:geekreep/interface/user_auth/authentication_check/auth_check.dart';
import 'package:geekreep/interface/user_auth/geekie_login/geekie_login.dart';
import 'package:go_router/go_router.dart';

class MasterNavigator {
  static GoRouter appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'Auth Check',
        builder: (context, state) => const AuthenticationCheckScreen(),
      ),
      GoRoute(
        path: '/login/geekie',
        name: 'Geekie Login',
        builder: (context, state) => const GeekieLoginScreen(),
      )
    ],
  );
}
