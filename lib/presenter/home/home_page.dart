import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:entrega_agua/presenter/clients/clients_page.dart';
import 'package:entrega_agua/presenter/home/home_controller.dart';
import 'package:entrega_agua/presenter/products/products_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
            Center(child: Text('Profile')),
            Center(child: Text('config')),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.inventory_2),
            title: const Center(child: Text('Produtos')),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.people),
            title: const Center(child: Text('Clientes')),
            activeColor: Colors.purpleAccent,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Messages'),
            activeColor: Colors.pink,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
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
