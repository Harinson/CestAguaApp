import 'package:mobx/mobx.dart';

import '../../domain/entities/client_entity.dart';
import '../../domain/usecases/get_clients_usecase.dart';

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
