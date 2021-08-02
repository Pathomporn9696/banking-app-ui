import 'package:flutter/material.dart';
import 'package:ui_ui/api/local_auth_api.dart';

class AmountPage extends StatefulWidget {
  AmountPage({Key? key}) : super(key: key);

  @override
  _AmountPageState createState() => _AmountPageState();
}

class _AmountPageState extends State<AmountPage> {
  late TextEditingController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Amount'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/user1.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Maria Callas',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  '5812 9023 8431 1323',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  'assets/images/mastercolor.png',
                                  scale: 4,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Available: ',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey.shade600),
                            ),
                            Text(
                              '฿ 3,150.70',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '฿',
                              style:
                                  TextStyle(fontSize: 70, color: Colors.white),
                            ),
                            _sendAmountArea()
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Commission: ',
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 18),
                            ),
                            Text(
                              '฿ 3.30',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
          _sendMoney(),
        ],
      ),
    );
  }

  Container _sendAmountArea() {
    return Container(
      height: 70,
      width: 300,
      child: TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(
            color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),
      ),
    );
  }

  Container _sendMoney() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: const [Colors.yellow, Colors.green])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 50,
          ),
          Text(
            'Send money',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          IconButton(
              onPressed: () async {
                final isAuthenticated = await LocalAuthApi.authenticate();
                if (isAuthenticated) {
                  Navigator.of(context).pushNamed('/verfication');
                }
              },
              icon: Icon(
                Icons.east,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
    );
  }
}
