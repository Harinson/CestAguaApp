import 'package:dio/dio.dart';

class NewProductUsecase {
  NewProductUsecase();

  Future<bool> call({
    required String description,
    required double price,
  }) async {
    try {
      await Dio().post('https://vcqtjk.deta.dev/api/produto', data: {
        "descricao": description,
        "preco": price,
      });
      return true;
    } catch (e) {
      return false;
    }
  }
}
