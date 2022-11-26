import 'package:entrega_agua/domain/entities/client_entity.dart';
import 'package:entrega_agua/domain/entities/product_entity.dart';
import 'package:entrega_agua/domain/usecases/get_clients_usecase.dart';
import 'package:entrega_agua/domain/usecases/get_products_usecase.dart';
import 'package:mobx/mobx.dart';

part 'clients_controller.g.dart';

class ClientsController = ClientsControllerBase with _$ClientsController;

abstract class ClientsControllerBase with Store {
  @observable
  bool isLoaded = false;
  @observable
  List<ClientEntity> clients = [];

  void getClientsData() async {
    clients = await GetClientsUsecase().call();
    isLoaded = true;
  }
}
