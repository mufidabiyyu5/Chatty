import 'package:flutter/material.dart';
import 'theme.dart';
import 'widgets/bubble_chat.dart';
// import 'widgets/chat_input.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  var message = TextEditingController();

  List chatMessage = [
    {
      'imageUrl': 'assets/images/pic.png',
      'text': 'How are ya guys?',
      'time': '14:30',
      'fromFriends': true,
    },
    {
      'imageUrl': 'assets/images/pic-2.png',
      'text': 'Find here :P',
      'time': '15:41',
      'fromFriends': true,
    },
    {
      'imageUrl': 'assets/images/profile-1.png',
      'text': 'Thinking about how \n to deal with this \n client from hell...',
      'time': '17:17',
      'fromFriends': false,
    },
    {
      'imageUrl': 'assets/images/pic-1.png',
      'text': 'Love them',
      'time': '20:43',
      'fromFriends': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: chatColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/icon.png',
                          width: 55,
                          height: 55,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jakarta Fair",
                              style: title,
                            ),
                            Text(
                              "14,209 members",
                              style: subTitle,
                            ),
                          ],
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.call),
                          style: ElevatedButton.styleFrom(
                            primary: greenColor,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(8),
                            shadowColor: greenColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: chatMessage.length,
                  itemBuilder: (context, index) =>
                      chatMessage[index]['fromFriends'] == true
                          ? BubbleChatFromFriends(
                              imageUrl: chatMessage[index]['imageUrl'],
                              text: chatMessage[index]['text'],
                              time: chatMessage[index]['time'],
                            )
                          : BubbleChatFromMe(
                              imageUrl: chatMessage[index]['imageUrl'],
                              text: chatMessage[index]['text'],
                              time: chatMessage[index]['time'],
                            ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                      left: 16,
                      right: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(75)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: message,
                            decoration: InputDecoration(
                              hintText: 'Type message ...',
                              hintStyle: chat,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            var textMessage = message.text.toString();
                            final now = new TimeOfDay.now();
                            // TimeOfDay timePicked =
                            // now.replacing(hour: now.hourOfPeriod);
                            String time = now.format(context);
                            if (textMessage.isNotEmpty) {
                              setState(() {
                                chatMessage.add({
                                  'imageUrl': 'assets/images/profile-1.png',
                                  'text': textMessage,
                                  'time': time,
                                  'fromFriends': false,
                                });
                                message.clear();
                              });
                            }
                          },
                          child: Image.asset(
                            "assets/images/send.png",
                            width: 16,
                            height: 16,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: bubbleChat,
                            onPrimary: greyColor,
                            shape: CircleBorder(),
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            shadowColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
