import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_router/lib-2/dashboard.dart';
import 'package:learn_go_router/lib-2/profile.dart';
import 'package:learn_go_router/lib-2/route_names.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    // initialLocation: "/profile",
    routes: [
      GoRoute(
        name: RouteNames.dashboard,
        path: '/',
        builder: ((context, state) => const Dashboard()),
        routes: [
          GoRoute(
            name: RouteNames.profile,
            path: 'profile/:name',
            builder: ((context, state) => Profile(
                  name: state.params['name']!,
                )),
          ),
        ],
      ),
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
