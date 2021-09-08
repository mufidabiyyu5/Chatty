import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';
import 'theme.dart';
import 'widgets/chat_tile.dart';
import 'chat_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatPage(),
          ),
        ),
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/profile.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sabrina Carpenter",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Travel Freelancer",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: textBlue,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsetsDirectional.all(30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Friends",
                        style: title,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/pic.png",
                        name: "Joshuer",
                        text: "Sorry, you’re not my ty...",
                        time: "Now",
                        isRead: false,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/pic-1.png",
                        name: "Gabriella",
                        text: "I saw it clearly and mig...",
                        time: "14:30",
                        isRead: true,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Groups",
                        style: title,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/icon.png",
                        name: "Jakarta Fair",
                        text: "Love Them",
                        time: "20:43",
                        isRead: true,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/icon-1.png",
                        name: "Angga",
                        text: "Here here we can go...",
                        time: "20:14",
                        isRead: false,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/icon-2.png",
                        name: "Bentley",
                        text: "The car which does not...",
                        time: "19:11",
                        isRead: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
