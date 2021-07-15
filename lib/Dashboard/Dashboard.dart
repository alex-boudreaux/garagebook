import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:garagebook/Dashboard/src/AccountCard.dart';
import 'package:garagebook/Dashboard/src/ProjectStatisticsCards.dart';
import 'package:garagebook/Dashboard/src/SharedFilesItem.dart';
import 'package:garagebook/Dashboard/src/SubHeader.dart';
import 'package:garagebook/Dashboard/src/SearchBar.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.665,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
                  child: Text(
                    'S1 Accounts',
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, top: 19.0),
                  child: SearchBar(),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              height: MediaQuery.of(context).size.height * .92,
              width: MediaQuery.of(context).size.width * 0.665,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 5,
                children: List.generate(53, (index) {
                  int randNumber = Random().nextInt(100);
                  String randPer = randNumber.toString() + "%";

                  return GestureDetector(
                    onTap: () {
                      print("onTap called.");
                    },
                    child: AccountCard(
                      color: Colors.blueAccent,
                      projectName: 'Seg 1 Acccount',
                      percentComplete: randPer,
                      progressIndicatorColor: Colors.blueAccent,
                      icon: Feather.cloud,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
