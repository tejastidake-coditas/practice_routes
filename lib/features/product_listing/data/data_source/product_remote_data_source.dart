
import 'package:practice_routes/core/constants/text_constants.dart';
import 'package:practice_routes/core/networking/network.dart';
import 'package:practice_routes/core/networking/network_constants.dart';
import 'package:practice_routes/features/product_listing/data/model/product_listing_model.dart';

abstract class IProductRemoteDataSource {
  Future<List<ProductListingModel>> fetchProducts();

  Future<List<ProductListingModel>> searchProducts(String query);
}

class ProductRemoteDataSource implements IProductRemoteDataSource {
  @override
  Future<List<ProductListingModel>> fetchProducts() async {
    try {

      // status codes not handled, don't use createdio again & again
      final response = await Network.createDio().get(
        NetworkConstants.productsEndpoint,
        queryParameters: {'limit': 100},
      );

      final List<dynamic> products = response.data['products'];
      return products.map((e) => ProductListingModel.fromJson(e)).toList();
    } catch (e) {
      throw Exception('${TextConstants.errorFetchingProducts}$e');
    }
  }

  @override
  Future<List<ProductListingModel>> searchProducts(String query) async {
    try {
      final response = await Network.createDio().get(
        NetworkConstants.searchEndpoint,
        queryParameters: {'q': query, 'limit': 100},
      );

      final List<dynamic> products = response.data['products'];
      return products.map((e) => ProductListingModel.fromJson(e)).toList();
    } catch (e) {
      throw Exception('${TextConstants.errorSearchingProducts}$e');
    }
  }
}
