import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/Data/Color/color.dart';
import 'package:myapp/Data/Fonts/fonts.dart';
import 'package:myapp/Features/Screen/screen.dart';
import 'package:myapp/Services/service.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: screenHeight(context),
              width: screenWidth(context),
              child: Image.asset(
                "lib/Data/Assets/Images/favour.jpg",
                fit: BoxFit.cover,
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: black.withOpacity(0.6),
            ),

            Positioned(
              top: 180.h,
              right: 40.w,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: BoxBorder.all(style: BorderStyle.none),
                  color: black.withOpacity(0.5),
                ),
                height: screenHeight(context) * 0.7,
                width: screenWidth(context) * 0.8,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "lib/Data/Assets/Images/logo.png",
                              height: 130.0,
                              width: 130.0,
                            ),
                            SizedBox(height: 0.h),
                            Text(
                              "Tẹwọ́lé",
                              style: majorFont.copyWith(
                                color: white,
                                fontSize: 30.0,
                              ),
                            ),
                            Text(
                              "Tẹ orúkọ ìní àti ọ̀rọ̀ aṣínà rẹ láti tẹwọ́lé.",
                              style: minorFont.copyWith(
                                color: white.withOpacity(0.3),
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 40.h),
                            SizedBox(
                              width: screenWidth(context) * 0.65,
                              height: screenHeight(context) * 0.062,
                              child: TextField(
                                controller: name,
                                cursorColor: buttonColor,
                                cursorHeight: 20.0,
                                style: minorFont.copyWith(color: white),
                                //onTapOutside: FocusManager.instance.primaryFocus?.unfocus(),
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  labelText: "Ìmeèlì re",
                                  labelStyle: minorFont.copyWith(
                                    color: white.withOpacity(0.2),
                                  ),
                                  filled: true,
                                  fillColor: white.withOpacity(0.1),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                    borderSide: BorderSide.none,
                                  ),

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 30.h),
                            SizedBox(
                              width: screenWidth(context) * 0.65,
                              height: screenHeight(context) * 0.062,
                              child: TextField(
                                controller: password,
                                cursorColor: buttonColor,
                                cursorHeight: 20.0,
                                style: minorFont.copyWith(color: white),
                                //onTapOutside: FocusManager.instance.primaryFocus?.unfocus(),
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  labelText: "Ọ̀rọ̀ asínà",
                                  labelStyle: minorFont.copyWith(
                                    color: white.withOpacity(0.2),
                                  ),
                                  filled: true,
                                  fillColor: white.withOpacity(0.1),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                    borderSide: BorderSide.none,
                                  ),

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 30.h),
                            GestureDetector(
                              onTap: () async {
                                await AuthServices().loginUser(
                                  context,
                                  email: name.text.trim(),
                                  password: password.text.trim(),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: black,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                width: screenWidth(context) * 0.65,
                                height: screenHeight(context) * 0.062,
                                child: Center(
                                  child: Text(
                                    "Tẹwọ́lé",
                                    style: majorFont.copyWith(
                                      fontSize: 20.0,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                  context,
                                  'Signup',
                                );
                              },
                              child: Text(
                                "Sàkọsílẹ̀ tuntun",
                                style: minorFont.copyWith(
                                  fontSize: 12.0,
                                  color: white.withOpacity(0.5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
