import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet/src/screens/add.dart';
import 'package:wallet/src/screens/home.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
    ),
    GoRoute(
      path: '/add',
      builder: (BuildContext context, GoRouterState state) {
        return const Add();
      },
    ),
  ],
);
