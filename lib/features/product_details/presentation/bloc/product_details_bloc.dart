import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_routes/core/constants/text_constants.dart';
import 'package:practice_routes/features/product_details/presentation/bloc/product_details_event.dart';
import 'package:practice_routes/features/product_details/presentation/bloc/product_details_state.dart';
import 'package:practice_routes/features/product_details/domain/usecases/get_product_usecase.dart'; // Correct import for GetProductUseCase

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final GetProductUseCase getProductUseCase;

  ProductDetailsBloc(this.getProductUseCase) : super(ProductDetailsInitial()) {
    on<FetchProductDetails>((event, emit) async {
      emit(ProductDetailsLoading());
      try {
        final product = await getProductUseCase(event.id);
        emit(ProductDetailsLoaded(product));
      } catch (e) {
        emit(ProductDetailsError(TextConstants.failedToFetch));
      }
    });
  }
}
