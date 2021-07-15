import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarTalent extends StatefulWidget {
  @override
  _SearchBarTalentState createState() => _SearchBarTalentState();
}

class _SearchBarTalentState extends State<SearchBarTalent> {
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
          child: Icon(
            Feather.search,
            color: hovered ? Colors.blue : Colors.white,
            size: 20.0,
          ),
        ));
  }
}
