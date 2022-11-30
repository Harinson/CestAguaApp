import 'package:entrega_agua/domain/entities/request_entity.dart';
import 'package:entrega_agua/domain/usecases/get_requests_usecase.dart';

import '../../domain/entities/product_entity.dart';
import 'package:mobx/mobx.dart';

part 'requests_controller.g.dart';

class RequestsController = RequestsControllerBase with _$RequestsController;

abstract class RequestsControllerBase with Store {
  @observable
  bool isLoaded = false;
  @observable
  List<RequestEntity> requests = [];

  void getRequetsData() async {
    requests = await GetRequestsUsecase().call();
    isLoaded = true;
  }
}
