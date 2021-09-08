import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool isRead;

  ChatTile({
    this.imageUrl = "",
    this.name = "",
    this.text = "",
    this.time = "",
    this.isRead = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: title,
                ),
                isRead == true
                    ? Text(
                        text,
                        style: subTitle,
                      )
                    : Text(
                        text,
                        style: subTitleUnRead,
                      ),
              ],
            ),
          ),
          Spacer(),
          Text(
            time,
            style: subTitle,
          ),
        ],
      ),
    );
  }
}
