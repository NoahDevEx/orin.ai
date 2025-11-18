import 'package:flutter/material.dart';
import 'package:myapp/Features/Navigation/bottom_nav.dart';
import 'package:myapp/Features/Navigation/index.dart';

class Librarypage extends StatefulWidget {
  const Librarypage({super.key});

  @override
  State<Librarypage> createState() => _LibrarypageState();
}

class _LibrarypageState extends State<Librarypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      children: [
        Positioned(
        bottom:0.0,
        child: bottomNavBar(libraryPage,context))
      ],
    ),
    );
  }
}