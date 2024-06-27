import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/offers/screens/offers_screen.dart';
import 'package:myapp/features/outfits/screens/outfits_screen.dart';
import 'package:myapp/features/profile/screens/profile_screen.dart';
import 'package:myapp/features/splash/screens/splash_screen.dart';

int getCurrentIndex(BuildContext context) {
  final String location = GoRouterState.of(context).uri.toString();

  if (location.startsWith('/offers')) {
    return 0;
  } else if (location.startsWith('/outfits')) {
    return 1;
  } else if (location.startsWith('/profile')) {
    return 2;
  } else {
    return 0;
  }
}

final GoRouter router = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_offer),
                  label: 'Offers',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.collections),
                  label: 'Outfits',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              onTap: (value) {
                switch (value) {
                  case 0:
                    context.go('/offers');
                    break;
                  case 1:
                    context.go('/outfits');
                    break;
                  case 2:
                    context.go('/profile');
                    break;
                }
              },
              currentIndex: getCurrentIndex(context),
              selectedItemColor: const Color(0xFFD700D2),
              unselectedItemColor: Colors.grey,
            ));
      },
      routes: [
        GoRoute(
          path: '/offers',
          builder: (context, state) => const OffersScreen(),
        ),
        GoRoute(
          path: '/outfits',
          builder: (context, state) => const OutfitsScreen(),
          // routes: [
          //   GoRoute(
          //     path: 'new',
          //     builder: (context, state) => const NewScreen(),
          //   ),
          //   GoRoute(
          //     path: 'list',
          //     builder: (context, state) => const ListScreen(),
          //   ),
          //   GoRoute(
          //     path: 'drafts',
          //     builder: (context, state) => const DraftsScreen(),
          //   ),
          // ],
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),
  ],
);
