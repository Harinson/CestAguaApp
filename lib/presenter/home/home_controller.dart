import 'package:entrega_agua/domain/entities/product_entity.dart';
import 'package:entrega_agua/domain/usecases/get_products_usecase.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int currentIndex = 0;

  Widget floating(BuildContext context) {
    if (currentIndex == 0) {
      return FloatingActionButton(
        enableFeedback: true,
        tooltip: 'Adicionar Produto',
        onPressed: () {
          openModalNewProduct(context);
        },
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
        ),
      );
    }
    return const SizedBox();
  }

  void openModalNewProduct(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: Text('Novo Produto'),
            content: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            actions: [],
          );
        }));
  }
}
