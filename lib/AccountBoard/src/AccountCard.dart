import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class AccountCard extends StatefulWidget {
  final String projectName;
  final String market;
  final String city;
  final String state;
  final String squadManager;
  AccountCard({
    this.projectName,
    this.market,
    this.city,
    this.state,
    this.squadManager,
  });
  factory AccountCard.fromJson(Map<String, String> json) {
    return AccountCard(
      projectName: json['projectName'],
      market: json['market'],
      city: json['city'],
      state: json['state'],
      squadManager: json['squadManager'],
    );
  }
  @override
  _AccountCardState createState() => _AccountCardState();
}

Future<List<AccountCard>> _fetchAccountCards() async {
  final jobsListAPIUrl = 'https://mock-json-service.glitch.me/';
  final response = await http.get(jobsListAPIUrl);

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((job) => new AccountCard.fromJson(job)).toList();
  } else {
    throw Exception('Failed to load jobs from API');
  }
}

class _AccountCardState extends State<AccountCard> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (value) {
        setState(() {
          hovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 275),
        height: hovered ? 160.0 : 155.0,
        width: hovered ? 200.0 : 195.0,
        decoration: BoxDecoration(
            color: hovered ? Colors.blueAccent : Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: hovered ? Colors.black38 : Colors.black12,
                blurRadius: 20.0,
                spreadRadius: 5.0,
              ),
            ]),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18.0,
                  ),
                  Container(
                    height: 30.0,
                    width: 30.0,
                    padding: EdgeInsets.only(bottom: 3),
                    child: Icon(
                      Feather.briefcase,
                      color: !hovered ? Colors.white : Colors.blueAccent,
                      size: 16.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: hovered ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 13.0,
                  ),
                  Container(
                    child: Text(
                      widget.projectName,
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        color: hovered ? Colors.white : Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18.0,
                  ),
                  Container(
                    height: 13.0,
                    width: 13.0,
                    child: Icon(
                      Feather.map_pin,
                      size: 15.0,
                      color: hovered ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    child: Text(
                      'City, State',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0,
                        color: hovered ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18.0,
                  ),
                  Container(
                    height: 13.0,
                    width: 13.0,
                    child: Icon(
                      Feather.briefcase,
                      size: 15.0,
                      color: hovered ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    child: Text(
                      'Market',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0,
                        color: hovered ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18.0,
                  ),
                  Container(
                    height: 13.0,
                    width: 13.0,
                    child: Icon(
                      Feather.users,
                      size: 15.0,
                      color: hovered ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    child: Text(
                      'Sqaud Manager',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0,
                        color: hovered ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
