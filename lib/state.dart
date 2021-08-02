import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatePage extends StatefulWidget {
  StatePage({Key? key}) : super(key: key);

  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10.r),
                width: 400.w,
                height: 70.h,
                child: Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 185.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: const [Colors.orange, Colors.red],
                        ),
                      ),
                      child: Expanded(
                          child: Center(
                        child: Text(
                          'Expense',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Colors.white),
                        ),
                      )),
                    ),
                    Container(
                      width: 185.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey.shade900),
                      child: Center(
                        child: Text(
                          'Income',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )),
              ),
              Container(
                padding: EdgeInsets.only(right: 5.w, left: 5.w),
                width: 500.w,
                height: 70.h,
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 55,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                        ),
                        child: Center(
                          child: Text(
                            'D',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: 55,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                        ),
                        child: Center(
                          child: Text(
                            'W',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: 55,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: const [
                                Colors.yellowAccent,
                                Colors.greenAccent,
                              ]),
                        ),
                        child: Center(
                          child: Text(
                            'M',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 55,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                        ),
                        child: Center(
                          child: Text(
                            'Y',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: 55,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                        ),
                        child: Center(
                          child: Text(
                            'All',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: 55,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/calendar1.png',
                            ),
                            scale: 4,
                          ),
                          color: Colors.grey.shade900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 400.w,
                height: 350.h,
                padding: EdgeInsets.only(right: 5.w, left: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 55,
                      height: 280,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.deepPurple.shade300),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 33,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue.shade200),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.orange),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 10,
                            ),
                            width: 55,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.pink.shade400),
                          ),
                          Text(
                            'Jan',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 280,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.pink.shade400),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.orange),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 10,
                            ),
                            width: 55,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue.shade200),
                          ),
                          Text(
                            'Feb',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 280,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue.shade200),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.indigo),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 10,
                            ),
                            width: 55,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green),
                          ),
                          Text(
                            'Mar',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 280,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 94,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.green),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.deepPurple.shade300),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.orange),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 10,
                            ),
                            width: 55,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue.shade200),
                          ),
                          Text(
                            'Apr',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 280,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.pink.shade400),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.grey.shade400),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.deepPurple.shade300),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 10,
                            ),
                            width: 55,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green),
                          ),
                          Text(
                            'May',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 280,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue.shade200),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.orange),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: 55,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.pink.shade400),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 10,
                            ),
                            width: 55,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green),
                          ),
                          Text(
                            'Jun',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Totol Expenses',
                style: TextStyle(color: Colors.grey.shade500, fontSize: 18.sp),
              ),
              Container(
                padding: EdgeInsets.all(16.r),
                height: 70.h,
                width: 500,
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: false,
                    enlargeCenterPage: false,
                    aspectRatio: 1,
                  ),
                  items: [
                    Container(
                        width: 200,
                        child: Expanded(
                            child: Center(
                                child: Text(
                          '฿ 3,710.80',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold),
                        )))),
                    Container(
                        width: 200,
                        child: Expanded(
                            child: Center(
                                child: Text(
                          '฿ 9,999.99',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold),
                        )))),
                    Container(
                        width: 200,
                        child: Expanded(
                            child: Center(
                                child: Text(
                          '฿ 1,279.77',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold),
                        )))),
                  ],
                ),
              ),
              Container(
                color: Colors.black,
                height: 150.h,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade900,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/restaurant.png'),
                                      scale: 4),
                                ),
                              ),
                              Container(
                                width: 350,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Food',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '- 1,630.20 ฿',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          height: 6,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade900,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/shopping.png'),
                                      scale: 4),
                                ),
                              ),
                              Container(
                                width: 350,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Shopping',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '- 930.70 ฿',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          height: 6,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade900,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        Container(
                                          height: 6,
                                          width: 200,
                                          decoration: BoxDecoration(
                                            color: Colors.purple.shade300,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade900,
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/cafe.png'),
                                      scale: 4),
                                ),
                              ),
                              Container(
                                width: 350,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Restaurants & Cafes',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '- 710.30 ฿',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          height: 6,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade900,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        Container(
                                          height: 6,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade900,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/medication1.png'),
                                      scale: 4),
                                ),
                              ),
                              Container(
                                width: 350,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Health',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '- 439.60 ฿',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          height: 6,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade900,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        Container(
                                          height: 6,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.blue.shade200,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.grey.shade900,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
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
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: const [Colors.orange, Colors.red],
                    ),
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 44,
                  width: 107,
                  child: IconButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context, '/chatPage', (route) => false),
                    icon: Icon(
                      Icons.three_p,
                      color: Colors.white,
                    ),
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
}
