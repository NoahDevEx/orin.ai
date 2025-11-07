import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/Data/Color/color.dart';
import 'package:myapp/Data/Fonts/fonts.dart';
import 'package:myapp/Features/Screen/screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset("lib/Data/Assets/Images/logo.png"),
        leadingWidth: 70.0,

        actions: [
          SizedBox(
            width: screenWidth(context) * 0.65,
            height: screenHeight(context) * 0.062,
            child: TextField(
              controller: search,
              cursorColor: buttonColor,
              cursorHeight: 20.0,
              style: minorFont.copyWith(color: white),
              //onTapOutside: FocusManager.instance.primaryFocus?.unfocus(),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Sàwárí nibi...",
                labelStyle: minorFont.copyWith(color: white.withOpacity(0.2)),
                filled: true,
                fillColor: white.withOpacity(0.1),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide.none,
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          SizedBox(width: 10.w),
          SizedBox(
            child: CircleAvatar(radius: 25, backgroundColor: Colors.grey[100]),
          ),

          SizedBox(width: 10.w),
        ],
      ),
    );
  }
}
