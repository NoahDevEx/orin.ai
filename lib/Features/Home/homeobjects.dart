import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/Data/Color/color.dart';
import 'package:myapp/Data/Fonts/fonts.dart';

String song1 = "lib/Data/Assets/Images/song1.png";
String song2 = "lib/Data/Assets/Images/song2.png";
String song3 = "lib/Data/Assets/Images/song3.png";
String song4 = "lib/Data/Assets/Images/song4.png";
String song5 = "lib/Data/Assets/Images/song5.png";
String song6 = "lib/Data/Assets/Images/song6.png";
String song7 = "lib/Data/Assets/Images/song7.png";

List<Container> swipeCards() 
{
  return 
  [
    Container(
      
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(
        song7,
      width: 80.w,
      height:200.h,
        
        ),
      ),
    ),

    SizedBox(
      width: 100.w,
      height:200.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(
          song6,
          fit: BoxFit.cover,
        ),
      ),
    ),

    SizedBox(
      width: 140.w,
      height:200.h,
     child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(
          song5,
          fit: BoxFit.cover,
        ),
      ),
    ),

    SizedBox(
      width: 140.w,
      height:200.h,
       child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(
          song4,
          fit: BoxFit.cover,
        ),
      ),
    ),

    SizedBox(
      width: 140.w,
      height:200.h,
       child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(
          song3,
          fit: BoxFit.cover,
        ),
      ),
    ),

    SizedBox(
      width: 140.w,
      height:200.h,
       child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(
          song2,
          fit: BoxFit.cover,
        ),
      ),
    ),

    SizedBox(
      width: 140.w,
      height:200.h,
    child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(
          song1,
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];
}


Widget rowSongCard(String imagePath)
{
  return SizedBox(
    width: 150.w,
    height: 150.h,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget songType(String title)
{
  return Column(
    children: [
      Container(
      width: 200.w,
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: white.withOpacity(0.3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 10.w,),
          ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(song1,height:30.h,width:30.w,)),
          SizedBox(width: 10.w,),
          Text(title,style: majorFont.copyWith(color: white,fontSize: 18.0),)
        ],
      )
      ),
      SizedBox(height: 10.h,),
    ],
  );
}

List<String> title = 
[
  "Orin Jùjú",
  "Orin Háiláìfù",
  "Orin Fújì",
  "Orin Àpàlà",
  "Orin Ìbílẹ̀",
  "Orin Hip-Hopù",
  "Orin Afrobitì",
  "Orin Ìhìn Rere",
];