import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  // const Chats({Key? key}) : super(key: key);
  Calls(this.name, this.call, this.videoCall);
  String name;
  bool call;
  bool videoCall;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
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
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                call
                    ? Row(
                        children: const [
                          Icon(
                            Icons.call_made_rounded,
                            color: Color.fromRGBO(18, 140, 126, 1),
                            size: 14,
                          ),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              'july 01 2022 at 20:34',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        children: const [
                          Icon(
                            Icons.call_received,
                            color: Colors.red,
                            size: 14,
                          ),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              'july 01 2022 at 20:34',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  videoCall ? Icons.phone : Icons.videocam_rounded,
                  color: const Color.fromRGBO(18, 140, 126, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
