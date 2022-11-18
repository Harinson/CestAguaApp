import 'package:dio/dio.dart';
import 'package:entrega_agua/domain/entities/product_entity.dart';
import 'package:entrega_agua/infra/models/product_model.dart';

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
