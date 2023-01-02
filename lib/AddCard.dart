import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/theme.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.shade200,
            width: 2,
          )
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("+",style: GoogleFonts.rubik(
              textStyle: TextStyle(fontSize: 35  ),

              color: Colors.grey.shade700,
            )),
            Text('Add order',style: GoogleFonts.rubik(
              textStyle: TextStyle(fontSize: 18 ) ,
              color: Colors.grey.shade700,
            ))
          ]
        ),
      ),
    );
  }
}
