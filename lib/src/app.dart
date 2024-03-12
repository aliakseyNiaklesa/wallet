import 'package:flutter/cupertino.dart';
import 'package:wallet/src/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      routerConfig: router,
    );
  }
}
