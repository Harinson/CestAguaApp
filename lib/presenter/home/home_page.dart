import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:entrega_agua/presenter/requests/requests_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../clients/clients_page.dart';
import '../products/products_page.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  late HomeController _controller;

  @override
  void initState() {
    _pageController = PageController();
    _controller = Modular.get<HomeController>();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          physics: const BouncingScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _controller.currentIndex = index);
          },
          children: const [
            ProductsPage(),
            ClientsPage(),
            RequestsPage(),
            Center(child: Text('config')),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.inventory_rounded),
            title: const Center(child: Text('Produtos')),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.people_outline_rounded),
            title: const Center(child: Text('Clientes')),
            activeColor: Colors.purpleAccent,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.check_box_outlined),
            title: const Center(child: Text('Pedidos')),
            activeColor: Colors.pink,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.auto_graph),
            title: const Center(child: Text('Histórico')),
            activeColor: Colors.blue,
          ),
        ],
        onItemSelected: (index) {
          _controller.currentIndex = index;
          _pageController.jumpToPage(index);
        },
        selectedIndex: _controller.currentIndex,
      ),
      // floatingActionButton: Observer(
      //   builder: (context) {
      //     return _controller.floating(context);
      //   },
      // ),
    );
  }
}
