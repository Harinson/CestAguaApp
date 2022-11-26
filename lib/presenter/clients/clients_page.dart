import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../products/widgets/image_widget.dart';
import 'clients_controller.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({super.key});

  @override
  State<ClientsPage> createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  late ClientsController _controller;

  @override
  void initState() {
    _controller = Modular.get<ClientsController>();
    _controller.getClientsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (_controller.isLoaded) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: _controller.clients.length,
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
                                letter: _controller.clients[index].name,
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
                                  Text(_controller.clients[index].name),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(_controller.clients[index].number),
                                ],
                              ),
                            ],
                          )),
                    );
                  }),
            ),
          );
        }

        return const Center(child: CircularProgressIndicator.adaptive());
      },
    );
  }
}
