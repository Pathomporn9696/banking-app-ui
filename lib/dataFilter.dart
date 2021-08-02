import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:some_calendar/some_calendar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataFilt extends StatefulWidget {
  DataFilt({Key? key}) : super(key: key);

  @override
  _DataFiltState createState() => _DataFiltState();
}

class _DataFiltState extends State<DataFilt> {
  DateTime selectedDate = DateTime.now();
  List<DateTime> selectedDates = [];
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: false,
                      aspectRatio: 4,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: [
                    cards1(),
                    cards2(),
                    cards3(),
                    cards4(),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Expanded(
                          child: Container(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Text(
                                  '19 Mar - 18 Apr, 2021',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/rec1.png'),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        height: 650.h,
                        child: SomeCalendar(
                          primaryColor: Colors.greenAccent.shade400,
                          mode: SomeMode.Range,
                          textColor: Colors.black,
                          isWithoutDialog: false,
                          selectedDates: selectedDates,
                          startDate: Jiffy().subtract(years: 3),
                          lastDate: Jiffy().add(months: 9),
                          done: (date) {
                            setState(() {
                              selectedDates = date;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container cards1() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bgs1.png'))),
      width: 325,
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Main card',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                '฿ 9,999.99',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '5167 1280 3300 1299',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'assets/images/solid.png',
                scale: 7,
              )
            ],
          ),
        ],
      ),
    );
  }

  Container cards2() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bgs2.png'))),
      width: 325,
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Europe travel',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              Text(
                '฿ 7,118.30',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '1882 8245 9831 0505',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Image.asset(
                'assets/images/solid2.png',
                scale: 7,
              )
            ],
          ),
        ],
      ),
    );
  }

  Container cards3() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bgs3.png'))),
      width: 325,
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tokyo travel',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              Text(
                '฿ 127,803.19',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '5367 1120 8905 0177',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Image.asset(
                'assets/images/solid.png',
                scale: 7,
              )
            ],
          ),
        ],
      ),
    );
  }

  Container cards4() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bgs4.png'))),
      width: 325,
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'USA weekend',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              Text(
                '฿ 3,150.70',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '7288 9021 3300 1502',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Image.asset(
                'assets/images/solid2.png',
                scale: 7,
              )
            ],
          ),
        ],
      ),
    );
  }
}
