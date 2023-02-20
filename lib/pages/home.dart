import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_router/project/app_routes_constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("This is Home Page"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).pushNamed(MyAppRouteContants.aboutRouteName);
                  },
                  child: const Text("About Page"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).pushNamed(
                      MyAppRouteContants.profileRouteName,
                      params: {
                        'userName': "VED",
                        'userid': "VEDdsfjk3223",
                      },
                    );
                  },
                  child: const Text("Profile Page"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).pushNamed(MyAppRouteContants.contactRouteName);
                  },
                  child: const Text("Contact Us Page"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
