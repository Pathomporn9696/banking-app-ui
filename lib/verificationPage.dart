import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerficationPage extends StatefulWidget {
  VerficationPage({Key? key}) : super(key: key);

  @override
  _VerficationPageState createState() => _VerficationPageState();
}

class _VerficationPageState extends State<VerficationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Verification'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bgbg.png'), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.all(30.r),
          child: Column(
            children: [
              Text(
                'Sending money',
                style: TextStyle(color: Colors.grey.shade500, fontSize: 18.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '฿ 1,360',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              Image.asset(
                'assets/images/user1.png',
                scale: 3.w,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Maria Callas',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                '5812 9023 8431 1323',
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              ),
              SizedBox(height: 5.h),
              Image.asset('assets/images/mastercolor.png', scale: 3.w),
              SizedBox(height: 15.h),
              Image.asset(
                'assets/images/arrow.png',
                scale: 3.w,
              ),
              SizedBox(height: 15.h),
              Image.asset('assets/images/touchid.png', scale: 4.w),
              SizedBox(height: 15.h),
              Text(
                'Touch ID sensor',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'To verify transaction',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15.h),
              Text(
                'Plase verify your identity',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 25.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
