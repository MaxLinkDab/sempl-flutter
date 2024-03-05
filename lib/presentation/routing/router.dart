import 'package:auto_route/auto_route.dart';

import '../screens/profile/profile.dart';
import '../screens/profile/thanks/thanks.dart';

part "router.gr.dart";

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ProfileRoute.page,
          initial: true,
        ),
        AutoRoute(page: ThanksRoute.page),
      ];
}
