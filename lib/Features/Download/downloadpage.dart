import 'package:flutter/material.dart';
import 'package:myapp/Features/Navigation/bottom_nav.dart';
import 'package:myapp/Features/Navigation/index.dart';

class Downloadpage extends StatefulWidget {
  const Downloadpage({super.key});

  @override
  State<Downloadpage> createState() => _DownloadpageState();
}

class _DownloadpageState extends State<Downloadpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      children: [
        Positioned(
        bottom:0.0,
        child: bottomNavBar(downloadPage,context))
      ],
    ),
    );
  }
}