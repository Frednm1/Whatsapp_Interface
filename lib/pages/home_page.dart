import 'package:flutter/material.dart';

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
        bottom: TabBar(
          tabs: [
            Tab(
              child: Row(
                children: [
                  Text(
                    'Conversas',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    width: 20,
                    height: 20,
                    child: const Padding(
                      padding: EdgeInsets.all(3),
                      child: Text(
                        '28',
                        style: TextStyle(
                          color: Color.fromRGBO(18, 140, 126, 1),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Tab(
              child: Text(
                'Status',
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
