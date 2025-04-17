

import 'package:practice_routes/features/product_listing/domain/entities/product_listing_entity.dart';

abstract class ProductListingRepo {
  Future<List<ProductListingEntity>> getProducts();

  Future<List<ProductListingEntity>> searchProducts(String query);
}
