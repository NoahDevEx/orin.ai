import 'package:flutter/material.dart';
import 'package:myapp/Features/Navigation/bottom_nav.dart';
import 'package:myapp/Features/Navigation/index.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      children: [
        Positioned(
        bottom:0.0,
        child: bottomNavBar(profilePage,context))
      ],
    ),
    );
  }
}