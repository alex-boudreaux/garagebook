import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:garagebook/AccountBoard/src/AccountCard.dart';
import 'package:garagebook/AccountBoard/src/SearchBar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AccountCard>>(
      future: _fetchAccountCards(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<AccountCard> data = snapshot.data;
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
                        margin: EdgeInsets.only(
                            left: 30.0, top: 25.0, bottom: 10.0),
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
                    child: GridView.builder(
                        itemCount: data.length,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              print("onTap called.");
                            },
                            child: AccountCard(
                              projectName: 'Seg 1 Acccount',
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }
}






                // primary: false,
                // padding: const EdgeInsets.all(20),
                // crossAxisSpacing: 20,
                // mainAxisSpacing: 20,
                // crossAxisCount: 5,
                // children: List.generate(53, (index) {
                //   return GestureDetector(
                //     onTap: () {
                //       print("onTap called.");
                //     },
                //     child: AccountCard(
                //       projectName: 'Seg 1 Acccount',
                //     ),
                //   );
                // }),
