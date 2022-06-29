import 'package:flutter/material.dart';

class FirstStatus extends StatelessWidget {
  const FirstStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Stack(
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white54,
                  foregroundColor: Colors.grey,
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://icones.pro/wp-content/uploads/2021/02/icone-utilisateur-gris.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.add,
                    color: Color.fromRGBO(18, 140, 126, 1),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'My Status',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Touch for visualization',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
