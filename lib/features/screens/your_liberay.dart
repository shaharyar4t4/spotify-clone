import 'package:flutter/material.dart';

class YourLiberay extends StatelessWidget {
  const YourLiberay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(
          'Your Library Screen',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
