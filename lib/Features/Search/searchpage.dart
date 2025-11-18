import 'package:flutter/material.dart';
import 'package:myapp/Features/Navigation/bottom_nav.dart';
import 'package:myapp/Features/Navigation/index.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      children: [
        Positioned(
        bottom:0.0,
        child: bottomNavBar(searchPage,context))
      ],
    ),
    );
  }
}