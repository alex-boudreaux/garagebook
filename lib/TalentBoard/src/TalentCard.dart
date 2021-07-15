import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TalentCard extends StatefulWidget {
  final String name;
  final String address;
  final String city;
  final String state;
  final String zip;
  final String role;
  final String managerId;
  // final Set<String> accountIds = Set.of();
  TalentCard({
    this.name,
    this.address,
    this.city,
    this.state,
    this.zip,
    this.role,
    this.managerId,
  });
  @override
  _TalentCardState createState() => _TalentCardState();
}

class _TalentCardState extends State<TalentCard> {
  bool hovered = false;
  final Color color = Colors.blueAccent;
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
        duration: Duration(milliseconds: 200),
        height: hovered ? 85.0 : 80.0,
        width: hovered ? 475.0 : 470.0,
        decoration: BoxDecoration(
            color: hovered ? color : Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: hovered ? Colors.black38 : Colors.black12,
                blurRadius: 20.0,
                spreadRadius: 5.0,
              ),
            ]),
        child: Center(
          child: Row(
            children: [
              Container(
                width: 15.0,
                decoration: BoxDecoration(
                  color: hovered ? Colors.white : Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 30.0,
                          width: 30.0,
                          child: Icon(
                            Feather.user,
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
                            "Name Name",
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: hovered ? Colors.white : Colors.blueAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 18.0,
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
                          'Role',
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
              Column(
                children: [
                  SizedBox(
                    height: 18.0,
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
                          'Manager',
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
                          Feather.mail,
                          size: 15.0,
                          color: hovered ? Colors.white : Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Container(
                        child: Text(
                          'Email',
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
              )
            ],
          ),
        ),
      ),
    );
  }

  // bool hovered = false;
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     child: Column(
  //       children: [
  //         SizedBox(
  //           height: 10.0,
  //         ),
  //         Container(
  //           height: 100.0,
  //           width: double.infinity,
  //           margin: EdgeInsets.symmetric(horizontal: 30.0),
  //           decoration: BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.circular(10.0),
  //           ),
  //           child: Row(
  //             children: [
  //               Container(
  //                 width: 10.0,
  //                 decoration: BoxDecoration(
  //                   color: Colors.blueAccent,
  //                   borderRadius: BorderRadius.only(
  //                     topLeft: Radius.circular(10.0),
  //                     bottomLeft: Radius.circular(10.0),
  //                   ),
  //                 ),
  //               ),
  //               Container(
  //                 width: MediaQuery.of(context).size.width * 0.27 - 60.0,
  //                 padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         Text(
  //                           'Name',
  //                           style: GoogleFonts.quicksand(
  //                             fontSize: 20.0,
  //                             fontWeight: FontWeight.bold,
  //                           ),
  //                         ),
  //                         Icon(
  //                           Icons.more_horiz,
  //                           size: 20.0,
  //                           color: Colors.black26,
  //                         ),
  //                       ],
  //                     ),
  //                     SizedBox(width: 5.0),
  //                     Container(
  //                       padding: EdgeInsets.only(top: 13.0),
  //                       height: 50.0,
  //                       child: Stack(
  //                         children: [
  //                           Positioned(
  //                             left: 40.0,
  //                             child: Container(
  //                               height: 30.0,
  //                               width: 30.0,
  //                               decoration: BoxDecoration(
  //                                 color: Colors.grey[800],
  //                                 borderRadius: BorderRadius.circular(20.0),
  //                                 border: Border.all(
  //                                   color: Colors.white,
  //                                 ),
  //                               ),
  //                               child: Icon(
  //                                 Icons.add,
  //                                 size: 15.0,
  //                                 color: Colors.white,
  //                               ),
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
