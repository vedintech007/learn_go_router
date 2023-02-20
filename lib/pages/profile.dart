import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
    required this.userName,
    required this.userid,
  });

  final String userName;
  final String userid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Profile"),
          ),
          const SizedBox(height: 20),
          Text("Passed username is $userName"),
          const SizedBox(height: 20),
          Text("Passed id is $userid"),
        ],
      ),
    );
  }
}
