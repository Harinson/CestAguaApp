import 'package:dio/dio.dart';
import '../entities/product_entity.dart';
import '../../infra/models/product_model.dart';

class GetProductsUseCase {
  GetProductsUseCase();

  Future<List<ProductEntity>> call() async {
    final response = await Dio().get('https://vcqtjk.deta.dev/api/produto/all');
    return (response.data as List)
        .map(
          (e) => ProductModel.fromJson(e),
        )
        .toList();
  }
}
