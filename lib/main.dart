import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router/route_names.dart';
import 'dashboard.dart';
import 'profile.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router',
      routerConfig: _router,

    );
  }
  final GoRouter _router = GoRouter(

      routes: [
    GoRoute(name: RouteNames.dashboard ,
        path: "/",
        builder: (context, state) => const Dashboard(),
  routes:[
    GoRoute(name: RouteNames.profile ,
        path: "/profile/:name",
        builder: (context, state) => Profile(
      //name: state.pathParameters["name"]!
        userName: state.uri.queryParameters['name']!
    )
   ),
  ],
  ),
   ],
   );
}
