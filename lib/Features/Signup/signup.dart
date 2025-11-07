import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/Data/Color/color.dart';
import 'package:myapp/Data/Fonts/fonts.dart';
import 'package:myapp/Features/Screen/screen.dart';
import 'package:myapp/Services/service.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController signup_name = TextEditingController();
  TextEditingController signup_email = TextEditingController();
  TextEditingController signup_password = TextEditingController();
  TextEditingController confirm_signup_password = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

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
              top: 150.h,
              right: 40.w,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: BoxBorder.all(style: BorderStyle.none),
                  color: black.withOpacity(0.5),
                ),
                height: screenHeight(context) * 0.77,
                width: screenWidth(context) * 0.8,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: SingleChildScrollView(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "lib/Data/Assets/Images/logo.png",
                                height: 130.0,
                                width: 130.0,
                              ),
                              Text(
                                "Ṣàkọsílẹ̀ tuntun",
                                textAlign: TextAlign.center,
                                style: majorFont.copyWith(
                                  color: white,
                                  fontSize: 30.0,
                                ),
                              ),
                              Text(
                                "Darapọ̀ mọ́ Orin.ai kí o lè rí ìrírí orin àtàwọn \nìmọ̀ AI tó dá lórí ìfẹ́ rẹ.",
                                textAlign: TextAlign.center,
                                style: minorFont.copyWith(
                                  color: white.withOpacity(0.3),
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20.h),
                              SizedBox(
                                width: screenWidth(context) * 0.65,
                                height: screenHeight(context) * 0.062,
                                child: TextField(
                                  controller: signup_name,
                                  cursorColor: buttonColor,
                                  cursorHeight: 20.0,
                                  style: minorFont.copyWith(color: white),
                                  //onTapOutside: FocusManager.instance.primaryFocus?.unfocus(),
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    labelText: "Orúkọ rẹ",
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

                              SizedBox(height: 10.h),
                              SizedBox(
                                width: screenWidth(context) * 0.65,
                                height: screenHeight(context) * 0.062,
                                child: TextField(
                                  controller: signup_email,
                                  cursorColor: buttonColor,
                                  cursorHeight: 20.0,
                                  style: minorFont.copyWith(color: white),
                                  //onTapOutside: FocusManager.instance.primaryFocus?.unfocus(),
                                  keyboardType: TextInputType.emailAddress,
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    labelText: "Imeèlì",
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

                              SizedBox(height: 10.h),
                              SizedBox(
                                width: screenWidth(context) * 0.65,
                                height: screenHeight(context) * 0.062,
                                child: TextField(
                                  controller: signup_password,
                                  cursorColor: buttonColor,
                                  cursorHeight: 20.0,
                                  style: minorFont.copyWith(color: white),
                                  //onTapOutside: FocusManager.instance.primaryFocus?.unfocus(),
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    labelText: "Ọrọ̀ aṣínà",
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

                              SizedBox(height: 10.h),
                              SizedBox(
                                width: screenWidth(context) * 0.65,
                                height: screenHeight(context) * 0.062,
                                child: TextField(
                                  controller: confirm_signup_password,
                                  cursorColor: buttonColor,
                                  cursorHeight: 20.0,
                                  style: minorFont.copyWith(color: white),
                                  //onTapOutside: FocusManager.instance.primaryFocus?.unfocus(),
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    labelText: "Jẹ́risi Ọrọ̀ aṣínà",
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

                              SizedBox(height: 15.h),
                              GestureDetector(
                                onTap: () async {
                                  if (signup_password.text.trim() ==
                                      confirm_signup_password.text.trim()) {
                                    await AuthServices().registerUser(
                                      context,
                                      email: signup_email.text.trim(),
                                      password: signup_password.text.trim(),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text("Ọrọ̀ asínà kò bá mu.",
                                        style: minorFont.copyWith(
                                          color: white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        backgroundColor: Colors.red,
                                        duration: Duration(milliseconds: 500),
                                      ),
                                    );
                                  }
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
                                      "Ṣàkọsílẹ̀",
                                      style: majorFont.copyWith(
                                        fontSize: 20.0,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.h),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                    context,
                                    'Login',
                                  );
                                },
                                child: Text(
                                  "< Padà si Itẹwọ́lé",
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
            ),
          ],
        ),
      ),
    );
  }
}
