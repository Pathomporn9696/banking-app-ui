import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransFer extends StatefulWidget {
  TransFer({Key? key}) : super(key: key);

  @override
  _TransFerState createState() => _TransFerState();
}

class _TransFerState extends State<TransFer> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Transfer to card',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16.r),
            child: (Text(
              'From the card',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp),
            )),
          ),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: false,
                  aspectRatio: 4.w,
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
          Container(
            margin: EdgeInsets.only(bottom: 10.h, top: 10.h),
            padding: EdgeInsets.all(16.r),
            child: (Text(
              'To the card',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp),
            )),
          ),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: false,
                  aspectRatio: 4.4.w,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: [
                Container(
                  padding: EdgeInsets.all(16.r),
                  height: 30.h,
                  width: 325.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: Colors.grey.shade900),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '_ _ _ _   _ _ _ _   _ _ _ _   _ _ _ _',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            'assets/images/scancard.png',
                            scale: 4.r,
                          )
                        ],
                      ),
                      Text(
                        'Enter card number',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 16.sp),
                      ),
                    ],
                  ),
                ),
                cards1(),
                cards2(),
                cards3(),
                cards4(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            height: 355.h,
            margin: EdgeInsets.only(top: 50.h),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 80.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50.w,
                        height: 50.h,
                        child: Icon(
                          Icons.expand_less,
                          color: Colors.white,
                          size: 30.sp,
                        ),
                      ),
                      Text(
                        'My contacts',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        width: 110.w,
                      ),
                      Container(
                        height: 50.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30.sp,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: ()=>Navigator.pushNamed(context, '/amount'),
                  child: Container(
                    margin: EdgeInsets.only(top: 20.r),
                    height: 60.h,
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
                                  fontWeight: FontWeight.bold, fontSize: 16.sp),
                            ),
                            SizedBox(height: 10.h,),
                            Row(
                              children: [
                                Text('5812 9023 8431 1323',style: TextStyle(color: Colors.white),),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Image.asset(
                                  'assets/images/mastercolor.png',
                                  scale: 4.w,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 80.w,
                        ),
                        Container(
                          height: 50.h,
                          width: 50.w,
                          child: Icon(Icons.more_vert,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20.h),
                  height: 60.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/user2.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Matt Hardy',
                            style: TextStyle(
                              color: Colors.white,
                                fontWeight: FontWeight.bold, fontSize: 16.sp),
                          ),
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              Text('4120 8530 4021 8218',style: TextStyle(color: Colors.white),),
                              SizedBox(
                                width: 5.w,
                              ),
                              Image.asset(
                                'assets/images/visacolor.png',
                                scale: 4.w,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 65.w,
                      ),
                      Container(
                        height: 50.h,
                        width: 50.w,
                        child: Icon(Icons.more_vert,color: Colors.white,),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.h),
                  height: 60.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/user3.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Andrea Smith',
                            style: TextStyle(
                              color: Colors.white,
                                fontWeight: FontWeight.bold, fontSize: 16.sp),
                          ),
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              Text('5590 1245 4510 0317',style: TextStyle(color: Colors.white),),
                              SizedBox(
                                width: 5.w,
                              ),
                              Image.asset(
                                'assets/images/mastercolor.png',
                                scale: 4.w,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 80.w,
                      ),
                      Container(
                        height: 50.h,
                        width: 50.h,
                        child: Icon(Icons.more_vert,color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container cards1() {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bgs1.png'))),
      width: 325.w,
      height: 50.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Main card',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
              Text(
                '฿ 9,999.99',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
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
                scale: 7.w,
              )
            ],
          ),
        ],
      ),
    );
  }

  Container cards2() {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bgs2.png'))),
      width: 325.w,
      height: 50.h,
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
                    fontSize: 20.sp,
                    color: Colors.white),
              ),
              Text(
                '฿ 7,118.30',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
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
                scale: 7.w,
              )
            ],
          ),
        ],
      ),
    );
  }

  Container cards3() {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bgs3.png'))),
      width: 325.w,
      height: 50.h,
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
                    fontSize: 20.sp,
                    color: Colors.white),
              ),
              Text(
                '฿ 127,803.19',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
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
                scale: 7.r,
              )
            ],
          ),
        ],
      ),
    );
  }

  Container cards4() {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bgs4.png'))),
      width: 325.w,
      height: 50.h,
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
                    fontSize: 20.sp,
                    color: Colors.white),
              ),
              Text(
                '฿ 3,150.70',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
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
                scale: 7.w,
              )
            ],
          ),
        ],
      ),
    );
  }
}
