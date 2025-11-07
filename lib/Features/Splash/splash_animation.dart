import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

Widget splashAnimation() {
  return Image.asset("lib/Data/Assets/Images/logo.png").zoomIn(
  duration: Duration(seconds:2),
  );
}
