import 'package:flutter/material.dart';
import 'widgets/bubble.dart';

class Chat extends StatelessWidget {
  final String userName;

  Chat(this.userName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userName),
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: const Opacity(
                opacity: 0.1,
                child: Image(
                  image: NetworkImage(
                      'https://theabbie.github.io/blog/assets/official-whatsapp-background-image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 130,
                  child: SingleChildScrollView(
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        BubbleSpecialThree(
                          seen: true,
                          text:
                              'ernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, ',
                          color: Color.fromRGBO(217, 253, 211, 1),
                          tail: true,
                          data: '20:31',
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          delivered: true,
                        ),
                        BubbleSpecialThree(
                          text: 'ernaturkkkkkkkkkkkkkk',
                          color: Color.fromRGBO(217, 253, 211, 1),
                          tail: true,
                          seen: true,
                          delivered: true,
                          data: '20:32',
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        BubbleSpecialThree(
                            text: 'Sure',
                            data: '20:33',
                            color: Colors.white,
                            tail: true,
                            isSender: false,
                            delivered: true,
                            seen: true),
                        BubbleSpecialThree(
                          text:
                              "ernatuipsum quia dolor sit amet, consectetur, adipisci velit, ",
                          color: Colors.white,
                          tail: true,
                          data: '20:34',
                          isSender: false,
                          delivered: true,
                        ),
                        BubbleSpecialThree(
                          text: "Thanks",
                          data: '20:35',
                          color: Colors.white,
                          tail: true,
                          delivered: true,
                          isSender: false,
                        ),
                        BubbleSpecialThree(
                          seen: true,
                          text:
                              'ernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, ',
                          color: Color.fromRGBO(217, 253, 211, 1),
                          tail: true,
                          data: '20:31',
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          delivered: true,
                        ),
                        BubbleSpecialThree(
                          text: 'ernaturkkkkkkkkkkkkkk',
                          color: Color.fromRGBO(217, 253, 211, 1),
                          tail: true,
                          seen: true,
                          delivered: true,
                          data: '20:32',
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        BubbleSpecialThree(
                            text: 'Sure',
                            data: '20:33',
                            color: Colors.white,
                            tail: true,
                            isSender: false,
                            delivered: true,
                            seen: true),
                        BubbleSpecialThree(
                          text:
                              "ernatuipsum quia dolor sit amet, consectetur, adipisci velit, ",
                          color: Colors.white,
                          tail: true,
                          data: '20:34',
                          isSender: false,
                          delivered: true,
                        ),
                        BubbleSpecialThree(
                          text: "Thanks",
                          data: '20:35',
                          color: Colors.white,
                          tail: true,
                          delivered: true,
                          isSender: false,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 42,
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                        ),
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.emoji_emotions_outlined,
                                color: Colors.black54,
                              ),
                              onPressed: () {},
                            ),
                            const Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Menssagem',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintStyle: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.attach_file_rounded,
                                color: Colors.black54,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.camera_alt,
                                color: Colors.black54,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromRGBO(18, 140, 126, 1),
                        ),
                        height: 42,
                        width: 42,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
