import 'package:dio/dio.dart';
import '../entities/product_entity.dart';
import '../../infra/models/product_model.dart';

class GetOneProductUsecase {
  GetOneProductUsecase();

  Future<ProductEntity> call({
    required int id,
  }) async {
    final response = await Dio().get('https://vcqtjk.deta.dev/api/produto/$id');
    return ProductModel.fromJson(response.data);
  }
}
