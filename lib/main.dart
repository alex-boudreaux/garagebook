import 'package:flutter/material.dart';
import 'package:garagebook/TalentBoard/TalentBoard.dart';
import 'package:garagebook/AccountBoard/AccountBoard.dart';
import 'package:garagebook/NavigationBar/NavigationBar.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            NavigationBar(),
            DashBoard(),
            CalendarSpace(),
          ],
        ),
      ),
    );
  }
}
