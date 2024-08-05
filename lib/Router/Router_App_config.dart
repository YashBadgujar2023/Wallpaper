

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallpaper/Router/Router_App_constant.dart';
import 'package:wallpaper/Screen/HomePage.dart';

class MyAppRouter{
  GoRouter router = GoRouter(
    initialLocation: "/home",
    routes: [
      GoRoute(
        name: MyAppRouterConstant.HomePageRouter,
        path: "/home",
        pageBuilder: (context, state) {
          return MaterialPage(child: Homepage());
        },
        )
    ]
    );
}