import 'package:dio/dio.dart';
import 'package:entrega_agua/domain/entities/request_entity.dart';
import 'package:entrega_agua/infra/models/request_model.dart';

class GetRequestsUsecase {
  Future<List<RequestEntity>> call() async {
    final response = await Dio().get('https://vcqtjk.deta.dev/api/pedido/all');
    return (response.data as List)
        .map(
          (e) => RequestModel.fromJson(e),
        )
        .toList();
  }
}
