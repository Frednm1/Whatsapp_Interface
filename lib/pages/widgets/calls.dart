import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  // const Chats({Key? key}) : super(key: key);
  Calls(this.name, this.call);
  String name;
  bool call;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundColor: Colors.white54,
              foregroundColor: Colors.grey,
              radius: 20,
              backgroundImage: NetworkImage(
                'https://icones.pro/wp-content/uploads/2021/02/icone-utilisateur-gris.png',
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                call
                    ? const Icon(Icons.call_made_rounded)
                    : const Icon(Icons.call_received),
                const Text(
                  '20 minutes ago',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.phone),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
