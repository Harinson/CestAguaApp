import 'package:entrega_agua/domain/entities/product_entity.dart';
import 'package:entrega_agua/domain/usecases/get_products_usecase.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int currentIndex = 0;

  Widget floating() {
    if (currentIndex == 0) {
      return FloatingActionButton(
        enableFeedback: true,
        tooltip: 'Adicionar Produto',
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Colors.red,
      );
    }
    return const SizedBox();
  }
}
