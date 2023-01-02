import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/theme.dart';

class OrderCard extends StatefulWidget {
  String title;
  OrderCard(this.title,{ Key? key}) : super(key: key);

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title,
            style: GoogleFonts. rubik(
              textStyle: headline03  ,
               
              color: Colors.grey.shade600,
            )),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 120,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey.shade200,
              width: 2,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Table',
                        style: GoogleFonts. rubik(
                          textStyle: small  ,
                           
                          color: Colors.grey.shade700,
                        )),
                    Text('1:45 PM',style:GoogleFonts. rubik(
                      textStyle: small  ,
                       
                      color: Colors.greenAccent.shade400,
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,8.0,0),
                          child: Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.greenAccent,
                            ),
                          ),
                        ),
                        Text('Mid Steak',   style: GoogleFonts. rubik(
                          textStyle: small  ,
                           
                          color: Colors.grey.shade500,
                        )),
                      ],
                    ),

                    Text('03',   style: GoogleFonts. rubik(
                      textStyle: small  ,
                       
                      color: Colors.grey.shade500,
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,8.0,0),
                          child: Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.yellowAccent,
                            ),
                          ),
                        ),
                        Text('Taco',   style: GoogleFonts. rubik(
                          textStyle: small  ,
                           
                          color: Colors.grey.shade500,
                        )),
                      ],
                    ),

                    Text('01',   style: GoogleFonts. rubik(
                      textStyle: small  ,
                       
                      color: Colors.grey.shade500,
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,8.0,0),
                          child: Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Text('Chi Burger',   style: GoogleFonts. rubik(
                          textStyle: small  ,
                           
                          color: Colors.grey.shade500,
                        )),
                      ],
                    ),

                    Text('05',   style: GoogleFonts. rubik(
                      textStyle: small  ,
                       
                      color: Colors.grey.shade500,
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,8.0,0),
                          child: Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                        Text('Wine',   style: GoogleFonts. rubik(
                          textStyle: small  ,
                           
                          color: Colors.grey.shade500,
                        )),
                      ],
                    ),

                    Text('01',   style: GoogleFonts. rubik(
                      textStyle: small  ,
                       
                      color: Colors.grey.shade500,
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Dishes : 13',   style: GoogleFonts. rubik(
                      textStyle: small  ,
                       
                      color: Colors.grey.shade700,
                    )),
                    Text('KOT : 3',   style: GoogleFonts. rubik(
                      textStyle: small  ,
                       
                      color: Colors.grey.shade700,
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
