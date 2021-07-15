import 'package:flutter/material.dart';
import 'package:garagebook/CalendarSpace/src/CalendarSection.dart';
import 'package:garagebook/CalendarSpace/src/MeetingsSection.dart';
import 'package:garagebook/CalendarSpace/src/TopContainer.dart';

class CalendarSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        color: Color.fromRGBO(21, 21, 21, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.28,
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            TopContainer(),
            CalendarSection(),
            MeetingsSection(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 50.0),
              child: ClipRRect(
                child: Image.asset(
                  'assets/image.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
