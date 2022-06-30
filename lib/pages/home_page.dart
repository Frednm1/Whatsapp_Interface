import 'package:flutter/material.dart';
import 'package:whatsapp_interface/pages/widgets/calls.dart';
import 'package:whatsapp_interface/pages/widgets/first_status.dart';

import 'widgets/chats.dart';
import 'widgets/status.dart';

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
          'WHATSAPP',
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
                  Text(
                    'CONVERSAS',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
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
                    margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    width: 10,
                    height: 10,
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
                  Chats('Ana vitória'),
                  Chats('Tiago'),
                  Chats('João'),
                  Chats('Felipe'),
                  Chats('Ana vitória'),
                  Chats('Tiago'),
                  Chats('João'),
                  Chats('Felipe'),
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
                  Status('Ana Vitória'),
                  Status('Tiago'),
                  Status('João'),
                  Status('Felipe'),
                  Status('Ana vitória'),
                  Status('Tiago'),
                  Status('João'),
                  Status('Felipe'),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Calls('Ana Vitória', true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
