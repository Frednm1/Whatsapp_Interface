import 'package:flutter/material.dart';

class FirstStatus extends StatelessWidget {
  const FirstStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white54,
                  foregroundColor: Colors.grey,
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHUvOd8Q-VihyupbJCdgjIR2FxnjGtAgMu3g&usqp=CAU',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Icon(
                      Icons.add_circle_sharp,
                      color: Color.fromRGBO(18, 140, 126, 1),
                      size: 22,
                    ),
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
