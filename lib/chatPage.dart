import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 180,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/live.png',
                        scale: 3,
                      ),
                      Positioned(
                          bottom: 3,
                          right: 6,
                          child: Image.asset(
                            'assets/images/notification.png',
                            scale: 5,
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Support',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.more_vert),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 10),
                          alignment: Alignment.topRight,
                          child: Text(
                            '2:30 PM',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 17),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.8),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'Can you help me ?',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.8),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Text(
                                  'Colin',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'entered the chat',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2:30 PM',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 17),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.8),
                            padding: EdgeInsets.all(10),
                            margin:
                                EdgeInsets.only(left: 10, top: 10, bottom: 2),
                            decoration: BoxDecoration(
                                color: Colors.indigo.shade400,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'Hello!',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.8),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.indigo.shade400,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'How can I help you? 😎',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 10),
                          alignment: Alignment.topRight,
                          child: Text(
                            '2:30 PM',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 17),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.8),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'Hmmm 🤔',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.8),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Text(
                                  'Colin',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'writes a message ...',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          _sendMessageArea(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                height: 44,
                width: 107,
                child: IconButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false),
                  icon: Icon(
                    Icons.apartment,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 44,
                width: 107,
                child: IconButton(
                  onPressed: () => Navigator.pushNamed(context, '/statePage'),
                  icon: (Icon(
                    Icons.signal_cellular_alt,
                    color: Colors.white,
                  )),
                ),
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: const [Colors.blue, Colors.indigo],
                  ),
                ),
                height: 44,
                width: 107,
                child: IconButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/chatPage', (route) => false),
                  icon: (Icon(
                    Icons.three_p,
                    color: Colors.white,
                  )),
                ),
              ),
              title: Text(''),
            ),
          ],
        ),
      ),
    );
  }

  Container _sendMessageArea() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Colors.grey.shade900),
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      child: Row(
        children: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.attachment,
              color: Colors.white,
            ),
            iconSize: 30,
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.text,
              keyboardAppearance: Brightness.dark,
              decoration: InputDecoration.collapsed(
                  hintText: 'Send a message...',
                  hintStyle: TextStyle(color: Colors.white)),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: const [Colors.yellow, Colors.green]),
            ),
            child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.near_me,
                color: Colors.white,
              ),
              iconSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
