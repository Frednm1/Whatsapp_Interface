import 'package:flutter/material.dart';
import '../chat.dart';

class Chats extends StatelessWidget {
  // const Chats({Key? key}) : super(key: key);
  Chats(this.userName, this.notification, {Key? key}) : super(key: key);
  final String userName;
  final int notification;

  _showPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return Chat(userName);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showPage(context),
      child: Container(
        width: double.infinity,
        height: 70,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: CircleAvatar(
                backgroundColor: Colors.white54,
                foregroundColor: Colors.grey,
                radius: 20,
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHUvOd8Q-VihyupbJCdgjIR2FxnjGtAgMu3g&usqp=CAU',
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
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
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    '17:30',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  notification != 0
                      ? Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color.fromARGB(255, 48, 200, 63),
                              ),
                            ),
                            Container(
                              margin: notification <= 9
                                  ? EdgeInsets.fromLTRB(6, 5, 0, 0)
                                  : EdgeInsets.fromLTRB(3, 5, 0, 0),
                              child: Text(
                                notification.toString(),
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
