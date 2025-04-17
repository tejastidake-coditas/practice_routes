import 'package:auto_route/auto_route.dart';
import 'package:practice_routes/core/navigation/app_router.gr.dart';
import 'package:practice_routes/core/navigation/product_details_routes.dart';

final AutoRoute productRoute = AutoRoute(
  page: ProductListScreenRoute.page,
  initial: true, // TODO: only one
  path: 'home',
  children: [
    productDetailsRoute,
  ],
);
