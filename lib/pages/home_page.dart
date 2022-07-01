import 'package:flutter/material.dart';
import 'widgets/calls.dart';
import 'widgets/first_status.dart';
import 'widgets/chats.dart';
import 'widgets/status.dart';
import 'widgets/popUpMenu.dart';

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
          PopupMenuButton<int>(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            itemBuilder: (context) => [
              // popupmenu item 1
              PopupMenuItem(
                value: 1,
                // row has two child icon and text.
                child: Row(
                  children: const [
                    // Icon(Icons.more_vert),
                    SizedBox(
                      // sized box with width 10
                      width: 10,
                    ),
                    Text(
                      "New Group",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 2,
                // row has two child icon and text.
                child: Row(
                  children: const [
                    // Icon(Icons.more_vert),
                    SizedBox(
                      // sized box with width 10
                      width: 10,
                    ),
                    Text(
                      "New Transmition",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 3,
                // row has two child icon and text.
                child: Row(
                  children: const [
                    // Icon(Icons.more_vert),
                    SizedBox(
                      // sized box with width 10
                      width: 10,
                    ),
                    Text(
                      "Conected Devices",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 4,
                // row has two child icon and text.
                child: Row(
                  children: const [
                    // Icon(Icons.more_vert),
                    SizedBox(
                      // sized box with width 10
                      width: 10,
                    ),
                    Text(
                      "Favorite Menssages",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 5,
                // row has two child icon and text.
                child: Row(
                  children: const [
                    // Icon(Icons.more_vert),
                    SizedBox(
                      // sized box with width 10
                      width: 10,
                    ),
                    Text(
                      "Payments",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 6,
                // row has two child icon and text.
                child: Row(
                  children: const [
                    // Icon(Icons.more_vert),
                    SizedBox(
                      // sized box with width 10
                      width: 10,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              // popupmenu item
            ],
            offset: const Offset(0, 0),
            color: Colors.white,
            elevation: 5,
          ),
        ],
        title: const Text(
          'WhatApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        bottom: TabBar(
          tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'CONVERSAS',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    width: 16,
                    height: 16,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(2, 1.75, 0, 0),
                      child: Text(
                        '28',
                        style: TextStyle(
                          color: Color.fromRGBO(18, 140, 126, 1),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'STATUS',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    width: 8,
                    height: 8,
                  ),
                ],
              ),
            ),
            const Tab(
              child: Text(
                'CHAMADAS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
          ],
          automaticIndicatorColorAdjustment: false,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        children: [
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Chats('Ana vitória', true),
                  Chats('Guilous', true),
                  Chats('Bingous', true),
                  Chats('Hlolo', true),
                  Chats('Vlolo', true),
                  Chats('Laura', true),
                  Chats('Na Clara', true),
                  Chats('Cuxtela', true),
                  Chats('Ana vitória', true),
                  Chats('Tiago', true),
                  Chats('João', true),
                  Chats('Felipe', true),
                  Chats('Ana vitória', true),
                  Chats('Tiago', true),
                  Chats('João', true),
                  Chats('Felipe', true),
                ],
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FirstStatus(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Recent Updates',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Status('Ana vitória'),
                  Status('Guilous'),
                  Status('Bingous'),
                  Status('Hlolo'),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'muted updates',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Status('Tiago'),
                  Status('João'),
                  Status('Felipe'),
                ],
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Calls('Bingous', true, true),
                  Calls('Guilous', false, false),
                  Calls('Bingous', true, false),
                  Calls('Guilous', false, false),
                  Calls('Bingous', true, true),
                  Calls('Guilous', false, true),
                  Calls('Bingous', true, false),
                  Calls('Guilous', false, false),
                  Calls('Guilous', false, true),
                  Calls('Bingous', true, false),
                  Calls('Guilous', false, false),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void choiceAction(String choice) {
  print('working');
}
