import 'package:dio/dio.dart';
import '../entities/client_entity.dart';

import '../../infra/models/client_model.dart';

class GetOneClientUsecase {
  Future<ClientEntity> call({
    required int id,
  }) async {
    final response = await Dio().get('https://vcqtjk.deta.dev/api/cliente/$id');
    return ClientModel.fromJson(response.data);
  }
}
