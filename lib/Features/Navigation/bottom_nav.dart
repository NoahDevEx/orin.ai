import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:myapp/Data/Color/color.dart';
import 'package:myapp/Features/Screen/screen.dart';

Widget bottomNavBar(int currentIndex,BuildContext context) {
  return Container(
    child: CurvedNavigationBar(
      index: currentIndex,
      backgroundColor: Colors.transparent,
      color: navBarColour,
      buttonBackgroundColor:buttonColor,
      height: 60.0,
      maxWidth: screenWidth(context),
      animationDuration: Duration(milliseconds: 300),
      items: <Widget>[
        Icon(Icons.home, size: 30, color: Colors.white),
        Icon(Icons.search, size: 30, color: Colors.white),
        Icon(Icons.library_music, size: 30, color: Colors.white),
        Icon(Icons.download, size: 30, color: Colors.white),
         Icon(Icons.person_2_rounded, size: 30, color: Colors.white),
      ],
      onTap: (currentIndex) => {
        if (currentIndex == 1)
          {
            Navigator.pushReplacementNamed(context, 'HomePage'),
          }
        else if (currentIndex == 2)
          {
            Navigator.pushReplacementNamed(context, 'SearchPage'),
          }
        else if (currentIndex == 3)
          {
            Navigator.pushReplacementNamed(context, 'LibraryPage'),
          }
        else if (currentIndex == 4)
          {
            Navigator.pushReplacementNamed(context, 'DownloadPage'),
          }
        else if (currentIndex == 5)
          {
            Navigator.pushReplacementNamed(context, 'ProfilePage'),
          }
      },
    ),
  );
}