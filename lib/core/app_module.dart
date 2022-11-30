import 'package:entrega_agua/domain/usecases/get_requests_usecase.dart';
import 'package:entrega_agua/presenter/requests/requests_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../domain/usecases/get_clients_usecase.dart';
import '../domain/usecases/get_products_usecase.dart';
import '../domain/usecases/new_product_usecase.dart';
import '../presenter/clients/clients_controller.dart';
import '../presenter/home/home_controller.dart';
import '../presenter/home/home_page.dart';
import '../presenter/products/products_controller.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => HomeController()),
    Bind((i) => ProductsController()),
    Bind((i) => ClientsController()),
    Bind((i) => RequestsController()),
    Bind((i) => NewProductUsecase()),
    Bind((i) => GetProductsUseCase()),
    Bind((i) => GetClientsUsecase()),
    Bind((i) => GetRequestsUsecase()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomePage()),
  ];
}
