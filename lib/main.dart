import 'package:flutter/material.dart';

import 'presentation/routing/router.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final AppRouter _route = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Sempl',
      routerConfig: _route.config(),
    );
  }
}
