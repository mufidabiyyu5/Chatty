import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class BubbleChatFromFriends extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;

  BubbleChatFromFriends({this.imageUrl = '', this.text = '', this.time = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              imageUrl,
              width: 40,
              height: 40,
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              decoration: BoxDecoration(
                color: bubbleChat,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                  bottomRight: Radius.circular(22),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: chat,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      time,
                      style: timeChat,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BubbleChatFromMe extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;

  BubbleChatFromMe({this.imageUrl = '', this.text = '', this.time = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                  bottomLeft: Radius.circular(22),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      text,
                      style: chat,
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      time,
                      style: timeChat,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Image.asset(
              imageUrl,
              width: 40,
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
