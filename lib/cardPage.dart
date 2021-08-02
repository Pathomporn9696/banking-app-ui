import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_ui/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ui/models/card_no.dart';

List<String> cardName = ['1', '2', '3', '4'];

class CardPage extends StatefulWidget {
  CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  int _current = 0;
  double _currentSliderValue = 3000;
  @override
  Widget build(BuildContext context) {
    List<CardNumber> cardName = [
      CardNumber("Main Card", "assets/images/bg1.png", "5590", "9999",
          "assets/images/googlepay.png", "assets/images/soild.png"),
      CardNumber("Main Card", "assets/images/bg1.png", "5590", "9999",
          "assets/images/googlepay.png", "assets/images/soild.png"),
      CardNumber("Main Card", "assets/images/bg1.png", "5590", "9999",
          "assets/images/googlepay.png", "assets/images/soild.png"),
      CardNumber("Main Card", "assets/images/bg1.png", "5590", "9999",
          "assets/images/googlepay.png", "assets/images/soild.png"),        
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('My card'),
              Container(
                height: 48,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                        image: AssetImage('assets/images/add.png'), scale: 4)),
              )
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 10),
          color: Colors.black,
          child: Column(
            children: [
              Container(
                height: 280.h,
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
                  items: cardSlider,
                ),
              ),
              Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: cardsList.asMap().entries.map((entry) {
                    int index = entry.key;
                    return Container(
                      width: 8.0.w,
                      height: 8.0.h,
                      margin: EdgeInsets.symmetric(
                          vertical: 40.0.h, horizontal: 5.0.w),
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
              Container(
                padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
                width: 500.w,
                height: 210.h,
                child: Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade900,
                                  ),
                                  height: 44,
                                  width: 240,
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      Positioned(
                                        bottom: 15,
                                        left: 20,
                                        child: Text(
                                          '฿${_currentSliderValue.round()}',
                                          style: TextStyle(
                                              color: Colors.greenAccent,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 15,
                                        right: 20,
                                        child: Text(
                                          '฿3,000',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        top: 15,
                                        right: 0,
                                        left: 0,
                                        child: SizedBox(
                                          width: 230,
                                          child: Slider(
                                            value: _currentSliderValue,
                                            min: 0,
                                            max: 3000,
                                            divisions: 3000,
                                            activeColor:
                                                Colors.greenAccent.shade400,
                                            inactiveColor: Colors.grey.shade800,
                                            label: _currentSliderValue
                                                .round()
                                                .toString(),
                                            onChanged: (double value) {
                                              setState(() {
                                                _currentSliderValue = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Month limit',
                                  style: TextStyle(color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    bottom: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade900,
                                  ),
                                  height: 44,
                                  width: 107,
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      Image.asset(
                                        'assets/images/term1.png',
                                        scale: 3,
                                      ),
                                      Positioned(
                                        right: 0,
                                        top: 0,
                                        child: Image.asset(
                                          'assets/images/notification.png',
                                          scale: 4,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  'Transfer',
                                  style: TextStyle(color: Colors.grey.shade400),
                                ),
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
                                  margin: EdgeInsets.only(bottom: 10, top: 10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/snowflake1.png'),
                                        scale: 4),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade900,
                                  ),
                                  height: 44,
                                  width: 107,
                                ),
                                Text(
                                  'Freeze card',
                                  style: TextStyle(color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10, top: 10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/palette1.png'),
                                        scale: 4),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade900,
                                  ),
                                  height: 44,
                                  width: 107,
                                ),
                                Text(
                                  'Customize',
                                  style: TextStyle(color: Colors.grey.shade400),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10, top: 10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/adjust1.png'),
                                        scale: 4),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade900,
                                  ),
                                  height: 44,
                                  width: 107,
                                ),
                                Text(
                                  'Manage',
                                  style: TextStyle(color: Colors.grey.shade400),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/tranPage'),
                child: Container(
                  margin: EdgeInsets.all(20.r),
                  width: 380,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade900,
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.expand_less,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          'History transactions',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )
                      ],
                    ),
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
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r)),
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
                  child: IconButton(
                    onPressed: () => Navigator.pushNamed(context, '/'),
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
      ),
    );
  }

  final List<Widget> cardSlider = cardName
      .map((item) => Container(
            margin: EdgeInsets.only(right: 8, left: 8),
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(item), fit: BoxFit.cover),
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
                        (item),
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
                            color: Colors.black,
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
                        '123',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(bottom: 16, left: 16, right: 16),
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
                      padding: EdgeInsets.only(
                          top: 14, bottom: 14, left: 14, right: 14),
                      child: Text(
                        '9999',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 14, bottom: 14, left: 14, right: 14),
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
          ))
      .toList();

  Container card1(
      {String? title,
      String? cardNumber,
      String? pathImages,
      String? amount,
      String? logoPlay,
      String? logoVisa}) {
    return Container(
      margin: EdgeInsets.only(right: 8, left: 8),
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(pathImages!), fit: BoxFit.cover),
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
                  title!,
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
                      '$logoPlay',
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
                  '$cardNumber',
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
                    EdgeInsets.only(top: 14, bottom: 14, left: 14, right: 14),
                child: Text(
                  '$amount',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 14, bottom: 14, left: 14, right: 14),
                child: (Image.asset(
                  '$logoVisa',
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
