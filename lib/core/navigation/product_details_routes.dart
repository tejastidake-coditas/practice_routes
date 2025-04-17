import 'package:auto_route/auto_route.dart';
import 'package:practice_routes/core/navigation/app_router.gr.dart';

final AutoRoute productDetailsRoute = AutoRoute(
  path: 'product-details/:productId',
  page: ProductDetailsScreenRoute.page,
);