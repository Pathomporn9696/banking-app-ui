import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ui/amount.dart';
import 'package:ui_ui/cardPage.dart';
import 'package:ui_ui/chatPage.dart';
import 'package:ui_ui/dataFilter.dart';
import 'package:ui_ui/state.dart';
import 'package:ui_ui/transactionPage.dart';
import 'package:ui_ui/transferPage.dart';
import 'package:ui_ui/verificationPage.dart';

final List<int> cardList = [1, 2, 3, 4, 5], cardsList = [1, 2, 3, 4];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        routes: {
          '/': (context) => HomePage(),
          '/cardPage': (context) => CardPage(),
          '/tranPage': (context) => TranPage(),
          '/dataFliter': (context) => DataFilt(),
          '/statePage': (context) => StatePage(),
          '/chatPage': (context) => ChatPage(),
          '/transfer': (context) => TransFer(),
          '/amount': (context) => AmountPage(),
          '/verfication': (context) => VerficationPage(),
        },
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 48.h,
              width: 50.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/settings1.png'), scale: 4.w),
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(6.r),
              ),
            ),
            Container(
              height: 84.h,
              width: 84.w,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset('assets/images/vector.png'),
                  Image.asset(
                    'assets/images/ellipse2.png',
                    scale: 4.w,
                  ),
                  Image.asset('assets/images/ellipse3.png', scale: 4.w),
                ],
              ),
            ),
            Container(
                height: 48.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/notification1.png',
                      scale: 3.w,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Image.asset(
                        'assets/images/notification.png',
                        scale: 4.w,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 16),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: false,
                  aspectRatio: 1.92,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: [
                  totalBalnace(),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/cardPage'),
                    child: Container(
                      margin: EdgeInsets.only(right: 8, left: 8),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/bg1.png'),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 200,
                      width: 500,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  'Main Card',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(0),
                                    child: (Image.asset(
                                      'assets/images/contactlessIndicator.png',
                                      scale: 5,
                                      color: Colors.white,
                                    )),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(16),
                                    child: (Image.asset(
                                      'assets/images/appleplay.png',
                                      scale: 5,
                                    )),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    bottom: 16, left: 16, right: 16),
                                child: Text(
                                  '5167 1280 3300 1299',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        bottom: 16, left: 16, right: 16),
                                    child: (Image.asset(
                                      'assets/images/touch.png',
                                      scale: 4,
                                      color: Colors.white,
                                    )),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    bottom: 16, left: 16, right: 16),
                                child: Text(
                                  '05/25',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    top: 16, bottom: 16, left: 16, right: 16),
                                child: Text(
                                  '฿ 9,999',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 16, bottom: 16, left: 16, right: 16),
                                child: (Image.asset(
                                  'assets/images/solid.png',
                                  scale: 4,
                                  color: Colors.white,
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  card02(),
                  card03(),
                  card04(),
                ],
              ),
            ),
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: cardList.asMap().entries.map((entry) {
                  int index = entry.key;
                  return Container(
                    width: 8.0.w,
                    height: 8.0.h,
                    margin:
                        EdgeInsets.symmetric(vertical: 40.0.h, horizontal: 5.0.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Colors.greenAccent.shade400
                          : Colors.white30,
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/transfer'),
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/arrows.png'),
                                      scale: 4),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.shade900,
                                ),
                                height: 44.h,
                                width: 107.w,
                              ),
                            ),
                            Text(
                              'Transfer',
                              style: TextStyle(color: Colors.grey.shade400),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/yen1.png'),
                                    scale: 4),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900,
                              ),
                              height: 44.h,
                              width: 107.w,
                            ),
                            Text(
                              'Exchange',
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/wallet1.png'),
                                    scale: 4),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900,
                              ),
                              height: 44.h,
                              width: 107.w,
                            ),
                            Text(
                              'Payment',
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/purchase1.png'),
                                    scale: 4),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900,
                              ),
                              height: 44.h,
                              width: 107.w,
                            ),
                            Text(
                              'Credits',
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/percentage1.png'),
                                    scale: 4),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900,
                              ),
                              height: 44.h,
                              width: 107.w,
                            ),
                            Text(
                              'Deposits',
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/gift1.png'),
                                    scale: 4),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900,
                              ),
                              height: 44.h,
                              width: 107.w,
                            ),
                            Text(
                              'Cashback',
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/money1.png'),
                                    scale: 4),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900,
                              ),
                              height: 44.h,
                              width: 107.w,
                            ),
                            Text(
                              'ATM',
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/security1.png'),
                                    scale: 4),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900,
                              ),
                              height: 44.h,
                              width: 107.w,
                            ),
                            Text(
                              'Security',
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/grid1.png'),
                                    scale: 4),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900,
                              ),
                              height: 44.h,
                              width: 107.w,
                            ),
                            Text(
                              'More',
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 110.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r)),
          color: Colors.grey.shade900,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: const [Colors.yellow, Colors.green],
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.green.shade200),
                height: 44.h,
                width: 107.w,
                child: Icon(
                  Icons.apartment,
                  color: Colors.white,
                ),
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                height: 44.h,
                width: 107.w,
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
                  borderRadius: BorderRadius.circular(20.r),
                ),
                height: 44.h,
                width: 107.w,
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

  Container totalBalnace() {
    return Container(
      padding: EdgeInsets.all(16),
      width: 500.w,
      height: 200.h,
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total balnace',
              style: TextStyle(color: Colors.grey.shade600),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              '£ 23970.30',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.sp),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'This month',
              style: TextStyle(color: Colors.grey.shade600),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/income.png',
                  scale: 4,
                ),
                SizedBox(
                  width: 10.h,
                ),
                Text(
                  '£ 5235.25',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/expense.png',
                  scale: 4,
                ),
                SizedBox(
                  width: 10.h,
                ),
                Text(
                  '£ 3710.80',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container card02() {
    return Container(
      margin: EdgeInsets.only(right: 8, left: 8),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg2.png'), fit: BoxFit.cover),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 200,
      width: 500,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Europe Travel',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(0),
                    child: (Image.asset(
                      'assets/images/contactlessIndicator.png',
                      scale: 5,
                      color: Colors.white,
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: (Image.asset(
                      'assets/images/googlepay.png',
                      scale: 5,
                    )),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                child: Text(
                  '1882 8245 9831 0505',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                    child: (Image.asset(
                      'assets/images/touch.png',
                      scale: 4,
                      color: Colors.white,
                    )),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                child: Text(
                  '05/25',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
                child: Text(
                  '€ 9,999',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
                child: (Image.asset(
                  'assets/images/solid2.png',
                  scale: 4,
                  color: Colors.white,
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container card03() {
    return Container(
      margin: EdgeInsets.only(right: 8, left: 8),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg3.png'), fit: BoxFit.cover),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 200,
      width: 500,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Tokyo travel',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(0),
                    child: (Image.asset(
                      'assets/images/contactlessIndicator.png',
                      scale: 5,
                      color: Colors.white,
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: (Image.asset(
                      'assets/images/appleplay.png',
                      scale: 5,
                    )),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                child: Text(
                  '5367 1120 8905 0177',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                    child: (Image.asset(
                      'assets/images/touch.png',
                      scale: 4,
                      color: Colors.white,
                    )),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                child: Text(
                  '05/25',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
                child: Text(
                  '¥ 9,999',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
                child: (Image.asset(
                  'assets/images/solid.png',
                  scale: 4,
                  color: Colors.white,
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container card04() {
    return Container(
      margin: EdgeInsets.only(right: 8, left: 8),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg4.png'), fit: BoxFit.cover),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 200,
      width: 500,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'USA weekend',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(0),
                    child: (Image.asset(
                      'assets/images/contactlessIndicator.png',
                      scale: 5,
                      color: Colors.white,
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: (Image.asset(
                      'assets/images/googlepay.png',
                      scale: 5,
                    )),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                child: Text(
                  '7228 9021 3300 1502',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                    child: (Image.asset(
                      'assets/images/touch.png',
                      scale: 4,
                      color: Colors.white,
                    )),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                child: Text(
                  '05/25',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
                child: Text(
                  '£ 9,999',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
                child: (Image.asset(
                  'assets/images/solid2.png',
                  scale: 4,
                  color: Colors.white,
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
