import 'package:entrega_agua/domain/usecases/new_product_usecase.dart';
import 'package:entrega_agua/presenter/home/home_controller.dart';
import 'package:entrega_agua/presenter/products/products_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../domain/usecases/get_clients_usecase.dart';
import '../domain/usecases/get_products_usecase.dart';
import '../presenter/clients/clients_controller.dart';
import '../presenter/home/home_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => HomeController()),
    Bind((i) => ProductsController()),
    Bind((i) => ClientsController()),
    Bind((i) => NewProductUsecase()),
    Bind((i) => GetProductsUseCase()),
    Bind((i) => GetClientsUsecase()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomePage()),
  ];
}
