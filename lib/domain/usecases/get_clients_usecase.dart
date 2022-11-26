import 'package:dio/dio.dart';
import '../entities/client_entity.dart';

import '../../infra/models/client_model.dart';

class GetClientsUsecase {
  Future<List<ClientEntity>> call() async {
    final response = await Dio().get('https://vcqtjk.deta.dev/api/cliente/all');
    return (response.data as List)
        .map(
          (e) => ClientModel.fromJson(e),
        )
        .toList();
  }
}
