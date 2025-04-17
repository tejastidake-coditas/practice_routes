import 'package:auto_route/auto_route.dart';
import 'package:practice_routes/core/navigation/add_product_routes.dart';
import 'package:practice_routes/core/navigation/app_router.gr.dart';
import 'package:practice_routes/core/navigation/chat_route.dart';
import 'package:practice_routes/core/navigation/favorite_route.dart';
import 'package:practice_routes/core/navigation/product_routes.dart';
import 'package:practice_routes/core/navigation/profile_routes.dart';

final AutoRoute mainShellRoute = AutoRoute(
  page: MainShellRoute.page,
  path: '/main-route',
  children: [
    productRoute,
    profileRoute,
    addProductRoute,
    chatRoute,
    favoriteRoute,
  ],
);