import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  // const Chats({Key? key}) : super(key: key);
  Chats(this.name);
  String name;

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
                const Text(
                  'Mensage pre visualization',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '17:30',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
