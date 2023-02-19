import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Profile"),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                  onPressed: () {
                    // GoRouter.of(context).go('/');
                    context.go('/');
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
      ),
    );
  }
}
