import 'package:flutter/material.dart';
class UserPage  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
          child: Text('This is Logged in Page',style: TextStyle(fontSize: 40),)
          ),
        ),
      ),
    );
  }
}
