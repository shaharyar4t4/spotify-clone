import 'package:flutter/material.dart';
import 'package:spotify/core/app_color/color.dart';

class YourLiberay extends StatelessWidget {
  const YourLiberay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Text(
          'Your Library Screen',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
