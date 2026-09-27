import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router/route_names.dart';

class Profile extends StatelessWidget {
  final String userName;
  //final String name;
  const Profile({
    super.key,
   //required this.name,
    required this.userName,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Welcome $userName"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Dashboard"),
          onPressed: () {
            //GoRouter.of(context).push("/");
            //context.go("/");
            context.goNamed(RouteNames.dashboard);
          },
        ),
      ),
    );
  }
}