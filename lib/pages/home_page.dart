import 'package:flutter/material.dart';
import 'package:whatsapp_interface/pages/widgets/main_menu_bar.dart';
import '../pages/widgets/main_menu_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(18, 140, 126, 1),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
            color: Colors.white,
          ),
        ],
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        bottom: const TabBar(
          tabs: [
            Tab(
              child: Text(
                'conversas',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Tab(
              child: Text(
                'status',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Tab(
              child: Text(
                'Chamadas',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
          automaticIndicatorColorAdjustment: false,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          indicatorColor: Colors.white,
        ),
      ),
      body: const TabBarView(
        children: [
          Center(
            child: Text('pag 1'),
          ),
          Center(
            child: Text('pag 2'),
          ),
          Center(
            child: Text('pag 3'),
          ),
        ],
      ),
    );
  }
}
