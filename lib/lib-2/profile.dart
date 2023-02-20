import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_router/lib-2/route_names.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome $name",
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Profile"),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  // GoRouter.of(context).go('/');
                  // context.go('/');
                  context.goNamed(RouteNames.dashboard);
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                  elevation: 2,
                  backgroundColor: Colors.amber,
                ),
                child: const Text(
                  "Go to dashboard",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
