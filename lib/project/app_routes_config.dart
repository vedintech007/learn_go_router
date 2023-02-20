import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_router/pages/about.dart';
import 'package:learn_go_router/pages/contact.dart';
import 'package:learn_go_router/pages/error_page.dart';
import 'package:learn_go_router/pages/home.dart';
import 'package:learn_go_router/pages/profile.dart';
import 'package:learn_go_router/project/app_routes_constants.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: MyAppRouteContants.homeRouteName,
          path: "/",
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: Home(),
            );
          },
        ),
        GoRoute(
          name: MyAppRouteContants.profileRouteName,
          path: "/profile/:userName/:userid",
          pageBuilder: (context, state) {
            return MaterialPage(
              child: Profile(
                userName: state.params['userName']!,
                userid: state.params['userid']!,
              ),
            );
          },
        ),
        GoRoute(
          name: MyAppRouteContants.aboutRouteName,
          path: "/about",
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: About(),
            );
          },
        ),
        GoRoute(
          name: MyAppRouteContants.contactRouteName,
          path: "/contact_us",
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: Contact(),
            );
          },
        ),
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorPage());
      });
}
