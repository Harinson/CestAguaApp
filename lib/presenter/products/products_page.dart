import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'products_controller.dart';
import 'widgets/image_widget.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  late ProductsController _controller;
  @override
  void initState() {
    _controller = Modular.get<ProductsController>();
    _controller.getProductData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (_controller.isLoaded) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: _controller.products.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        height: 50,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            ImageWidget(
                              letter: _controller.products[index].description,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(_controller.products[index].description),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                    'R\$ ${_controller.products[index].price.toStringAsFixed(2)}'),
                              ],
                            ),
                          ],
                        )),
                  );
                }),
          ),
        );
      }
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    });
  }
}
