import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Import your page widgets here
import 'offers_page.dart';
import 'outfits_page.dart';
import 'profile_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/', // Set the initial route
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => OutfitsPage(),
    ),
    GoRoute(
      path: '/offers',
      builder: (BuildContext context, GoRouterState state) => OffersPage(),
    ),
    GoRoute(
      path: '/profile',
      builder: (BuildContext context, GoRouterState state) => ProfilePage(),
    ),
  ],
);
