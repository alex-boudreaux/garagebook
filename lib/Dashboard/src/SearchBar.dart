import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
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
            color: hovered ? Colors.black54 : Colors.black,
            size: 20.0,
          ),
        ));
  }
}
