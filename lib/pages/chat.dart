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
                  textStyle: TextStyle(color: Colors.black, fontSize: 16),
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

///iMessage's chat bubble type
///
///chat bubble color can be customized using [color]
///chat bubble tail can be customized  using [tail]
///chat bubble display message can be changed using [text]
///[text] is the only required parameter
///message sender can be changed using [isSender]
///chat bubble [TextStyle] can be customized using [textStyle]

