import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router/route_names.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Profile"),
          onPressed: () {
            //GoRouter.of(context).push("/profile");
            //String name = "Sameer";
            //context.go("/profile/$name");
            //context.goNamed(RouteNames.profile, pathParameters: {"name": "Sameer"});
            context.goNamed(RouteNames.profile, queryParameters: {
              "name": "Sameer",
            });
          }
        )
      ),
    );
  }
}