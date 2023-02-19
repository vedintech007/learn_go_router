import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_router/dashboard.dart';
import 'package:learn_go_router/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    // initialLocation: "/profile",
    routes: [
      GoRoute(path: '/', builder: ((context, state) => const Dashboard()), routes: [
        GoRoute(
          path: '/profile',
          builder: ((context, state) => const Profile()),
        ),
      ]),
      // GoRoute(
      //   path: '/profile',
      //   builder: ((context, state) => const Profile()),
      // ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router',
      routerConfig: _router,
    );
  }
}
