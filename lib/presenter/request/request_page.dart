import 'package:entrega_agua/domain/entities/request_entity.dart';
import 'package:entrega_agua/presenter/request/request_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

class RequestPage extends StatefulWidget {
  final RequestEntity request;
  const RequestPage({
    super.key,
    required this.request,
  });

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  late RequestController _controller;
  @override
  void initState() {
    _controller = Modular.get<RequestController>();
    _controller.getClientData(id: widget.request.client);
    _controller.getProductData(id: widget.request.product);
    super.initState();
  }

  @override
  void dispose() {
    _controller.isLoadedClient = false;
    _controller.isLoadedProduct = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Hero(
          tag: widget.request.id,
          child: Text(
            'Pedido #${widget.request.id}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Observer(
                builder: ((context) {
                  if (_controller.isLoadedClient &&
                      _controller.isLoadedProduct) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Cliente: ${_controller.client!.name}',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Telefone: ${_controller.client!.number}',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            Text(
                              'Produto: ${_controller.product!.description}',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Preço und: R\$${_controller.product!.price.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            Text(
                              'Quantidade comprada: ${widget.request.quantity}',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Preço pago: R\$${widget.request.totalPrice.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Data da compra: ${DateFormat('dd/MM/yyyy').format(widget.request.date)}',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ],
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
