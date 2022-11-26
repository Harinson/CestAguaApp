import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/usecases/new_product_usecase.dart';
import 'widgets/text_form_component.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  int currentIndex = 0;

  NewProductUsecase newProductUsecase = Modular.get<NewProductUsecase>();

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
    String description = '';
    String price = '';
    showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: const Text('Novo Produto'),
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormComponent(
                  label: 'Nome',
                  inputType: TextInputType.text,
                  onChanged: (value) {
                    description = value;
                  },
                  validator: (value) {
                    if (value == null || value.trim() == '') {
                      return 'O nome do produto deve ser definido';
                    }
                    return null;
                  },
                ),
                TextFormComponent(
                  label: 'Preço',
                  inputType: TextInputType.number,
                  onChanged: (value) {
                    price = value.replaceAll('R\$', '');
                  },
                  validator: (value) {
                    if (value == null || value.trim() == '') {
                      return 'O preço do produto deve ser definido';
                    }

                    return null;
                  },
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                      decimalDigits: 2,
                      enableNegative: false,
                      symbol: 'R\$',
                    )
                  ],
                ),
              ],
            ),
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Modular.to.pop();
              },
              color: Colors.red.withOpacity(0.8),
              child: const Text('Cancelar'),
            ),
            MaterialButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  addNewProduct(
                    description: description,
                    price: double.parse(price),
                  );
                }
              },
              color: Colors.green.withOpacity(0.8),
              child: const Text('Adicionar'),
            ),
          ],
        );
      }),
    );
  }

  void addNewProduct({
    required String description,
    required double price,
  }) async {
    await newProductUsecase.call(
      description: description,
      price: price,
    );
  }
}
