import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/Data/Color/color.dart';
import 'package:myapp/Data/Fonts/fonts.dart';
import 'package:myapp/Features/Screen/screen.dart';

class Onboarding_Two extends StatefulWidget {
  const Onboarding_Two({super.key});

  @override
  State<Onboarding_Two> createState() => _Onboarding_TwoState();
}

class _Onboarding_TwoState extends State<Onboarding_Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: screenHeight(context),
            width: screenWidth(context),
            child: Image.asset(
              "lib/Data/Assets/Images/wole.jpg",
              fit: BoxFit.cover,
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: black.withOpacity(0.8),
          ),

          Positioned(
            top: 45.h,
            left: 40.w,
            right: 40.w,
            child: SizedBox(
              height: 370.h,
              width: 370.w,
              child: Image.asset("lib/Data/Assets/Images/logo.png"),
            ),
          ),

          Positioned(
            top: 380.h,
            left: 20.w,
            right: 20.w,
            child: Column(
              children: [
                Text(
                  "Ohùn Rẹ, Àṣà Rẹ ",
                  textAlign: TextAlign.center,
                  style: majorFont.copyWith(color: white, fontSize: 30.0),
                ),
                SizedBox(height: 20.0),
                Text(
                  "AI àti ìse àsà pọ̀ jọ fún ìrìn-àjò orin \nàlààyè.",
                  textAlign: TextAlign.center,
                  style: minorFont.copyWith(color: white, fontSize: 18),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 90.h,
            left: 45.w,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, 'Login');
              },
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 1,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    height: screenHeight(context) * 0.07,
                    width: screenWidth(context) * 0.8,
                    child: Center(
                      child: Text(
                        "Bẹ̀rẹ̀ Ìrìn-àjò",
                        style: majorFont.copyWith(fontSize: 20.0, color: white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, 'Onboarding_One');
                    },
                    child: Text(
                      "< Padà",
                      style: minorFont.copyWith(
                        fontSize: 18.0,
                        color: white.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
