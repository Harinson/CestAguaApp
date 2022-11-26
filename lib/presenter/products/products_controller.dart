import 'package:entrega_agua/domain/entities/product_entity.dart';
import 'package:entrega_agua/domain/usecases/get_products_usecase.dart';
import 'package:mobx/mobx.dart';

part 'products_controller.g.dart';

class ProductsController = ProductsControllerBase with _$ProductsController;

abstract class ProductsControllerBase with Store {
  @observable
  bool isLoaded = false;
  @observable
  List<ProductEntity> products = [];

  void getProductData() async {
    products = await GetProductsUseCase().call();
    isLoaded = true;
  }
}
