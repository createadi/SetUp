import 'package:flutter/material.dart';

class Startup extends StatelessWidget {
  static const String id = 'spalsh_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF5831AD),
        body: Column(
          children: [
            Image(
              image: AssetImage('resources/images/logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
