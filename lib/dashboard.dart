import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_router/route_names.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Dashboard"),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                  onPressed: () {
                    // GoRouter.of(context).go('/profile');
                    String name = "VED";
                    // context.go("/profile/$name");
                    context.goNamed(
                      RouteNames.profile,
                      params: {
                        "name": name,
                      },
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                    elevation: 2,
                    backgroundColor: Colors.amber,
                  ),
                  child: const Text(
                    "Go to profile",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
