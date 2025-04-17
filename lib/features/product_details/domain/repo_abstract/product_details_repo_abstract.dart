import 'package:practice_routes/features/product_details/domain/entitites/product_details_entity.dart';

abstract class ProductDetailsRepoAbstract {
  Future<ProductDetailsEntity> getProductDetails(int id);
}
