import 'package:go_router/go_router.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/item_page.dart';
import 'pages/checkout_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),

    GoRoute(
      path: '/profile',
      builder: (context, state) => ProfilePage(),
    ),

    GoRoute(
      path: '/checkout',
      builder: (context, state) => CheckoutPage(),
    ),

    // ✅ Exercise 3: deep link
    GoRoute(
      path: '/home/item/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return ItemPage(id: id);
      },
    ),
  ],
);