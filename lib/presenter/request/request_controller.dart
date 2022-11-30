import 'package:entrega_agua/domain/entities/client_entity.dart';
import 'package:entrega_agua/domain/entities/request_entity.dart';
import 'package:entrega_agua/domain/usecases/get_one_client_usecase.dart';
import 'package:entrega_agua/domain/usecases/get_one_product_usecase.dart';
import 'package:entrega_agua/domain/usecases/get_requests_usecase.dart';

import '../../domain/entities/product_entity.dart';
import 'package:mobx/mobx.dart';

part 'request_controller.g.dart';

class RequestController = RequestControllerBase with _$RequestController;

abstract class RequestControllerBase with Store {
  @observable
  bool isLoadedClient = false;
  @observable
  bool isLoadedProduct = false;

  @observable
  ClientEntity? client;
  @observable
  ProductEntity? product;

  void getClientData({required int id}) async {
    client = await GetOneClientUsecase().call(id: id);
    isLoadedClient = true;
  }

  void getProductData({required int id}) async {
    product = await GetOneProductUsecase().call(id: id);
    isLoadedProduct = true;
  }
}
