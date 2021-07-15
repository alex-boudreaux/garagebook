import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountCard extends StatefulWidget {
  final Color color;
  final Color progressIndicatorColor;
  final String projectName;
  final String percentComplete;
  final IconData icon;
  final String market;
  final String city;
  final String state;
  final String squadManager;
  AccountCard({
    this.color,
    this.progressIndicatorColor,
    this.percentComplete,
    this.projectName,
    this.icon,
    this.market,
    this.city,
    this.state,
    this.squadManager,
  });
  @override
  _AccountCardState createState() => _AccountCardState();
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
            color: hovered ? widget.color : Colors.white,
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
                    child: Icon(
                      widget.icon,
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
