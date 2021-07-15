import 'package:flutter/material.dart';
import 'package:garagebook/TalentBoard/src/TalentCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:garagebook/TalentBoard/src/SearchBarTalent.dart';

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
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
                  child: Text(
                    'Talent',
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, top: 19.0),
                  child: SearchBarTalent(),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            TalentCard(),
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
