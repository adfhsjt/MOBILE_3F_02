import 'package:belanja/models/item.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:go_router/go_router.dart';

// Konfigurasi GoRouter
final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    // Rute untuk Halaman Utama
    GoRoute(
      path: '/',
      name: 'home', 
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/item',
      name: 'item',
      builder: (context, state) {
        final item = state.extra as Item;
        return ItemPage(item: item);
      },
    ),
  ],
);