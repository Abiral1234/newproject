import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width ;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:Padding(
          padding: const EdgeInsets.fromLTRB(5.0,0,0,0),
          child: Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                    child: ClipOval(
                      child: SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset('assets/profile.jpg')),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    child: ClipOval(
                      child: SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset('assets/profile2.PNG')),
                    ),
                  ),
                ],
              ),
              ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,15,10,0),
            child: Text("Help",style: GoogleFonts.rubik(
              textStyle: body02 ,
              color: Colors. blueGrey.shade900,
              fontSize:16,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,25,0),
            child: Icon(Icons.messenger_outline,size: 23,color:Colors. blueGrey.shade600 ,),
          ),
        ],

      ),
      body: ListView(
        children:[
          Container(
            color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text("Quick Action", style: GoogleFonts.rubik(
                  textStyle: headline  ,
                    color: Colors. blueGrey.shade700,
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 90,
                      width: 110,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add,
                              color: Colors. blueGrey.shade700,),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Create Dish',style: GoogleFonts.rubik(
                            textStyle: body01 ,
                              color: Colors. blueGrey.shade700,

                            )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 90,
                      width: 110,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.fileLines,
                              color: Colors. blueGrey.shade700,),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Create Order',style: GoogleFonts.rubik(
                              textStyle: body01 ,
                              color: Colors. blueGrey.shade700,
                            )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 90,
                      width: 110,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_add_alt_1_outlined,
                              color: Colors. blueGrey.shade700,),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Invite Staff',style: GoogleFonts.rubik(
                              textStyle: body01 ,
                              color: Colors. blueGrey.shade700,
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10,0,0,0),
                      child: Text("Recent Activity",style: GoogleFonts.rubik(
                        textStyle: TextStyle(fontSize: 20 ),
                        fontWeight: FontWeight.w400,
                        color: Colors. blueGrey.shade700,
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,0,10,0),
                      child: Text("View more",style: GoogleFonts.rubik(
                        textStyle: body01 ,
                         
                        color: Colors.red,
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                        height: 250,
                        width: width/9,
                          child: Stack(
                            children: [
                              Center(
                                child: VerticalDivider(
                                  thickness: 3,
                                  color: Colors.grey.shade200,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                        color: Colors.grey.shade200,
                                        width: 4,
                                      )
                                  ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 5),
                                      child: FaIcon(FontAwesomeIcons.fileLines,color: Colors.red,size:16,),
                                    )),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.grey.shade200,
                                          width: 4,
                                        )
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 5),
                                      child: FaIcon(FontAwesomeIcons.fileLines,color: Colors.red,size:16,),
                                    )),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.grey.shade200,
                                          width: 4,
                                        )
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 5),
                                      child: FaIcon(FontAwesomeIcons.fileLines,color: Colors.red,size:16,),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40,),
                      ],
                    ),
                    Container(
                      height: 320,
                      width: 8*width/9-35,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Order Recieved",style: GoogleFonts.rubik(
                                        textStyle: body01 ,
                                        color: Colors. blueGrey.shade500,
                                         
                                      )),
                                      Text("10 min ago",style: GoogleFonts.rubik(
                                        textStyle: body01 ,
                                        color: Colors.grey.shade300,
                                      )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text("#ORD1 for April Curtis has been made by Bonnie Barstow .",style: GoogleFonts.rubik(
                                    textStyle: footnote01,
                                    color: Colors. blueGrey.shade500,
                                     
                                  )),

                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25,),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Order Recieved",style: GoogleFonts.rubik(
                                        textStyle: body01 ,
                                        color: Colors. blueGrey.shade500,
                                         
                                      )),
                                      Text("10 min ago",style: GoogleFonts.rubik(
                                        textStyle: body01 ,
                                        color: Colors.grey.shade300,
                                      )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text("#ORD2 for Peter Thornton has been made by Bonnie Barstow.",style: GoogleFonts.rubik(
                                    textStyle: footnote01,
                                    color: Colors. blueGrey.shade500,
                                     
                                  )),

                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25,),
                          Container(
                            height: 80,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Order Recieved",style: GoogleFonts.rubik(
                                        textStyle: body01 ,
                                        color: Colors. blueGrey.shade500,
                                         
                                      )),
                                      Text("10 min ago",style: GoogleFonts.rubik(
                                        textStyle: body01 ,
                                        color: Colors.grey.shade300,
                                      )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text("#ORD4 for Table01 has been made by Peter Thornton.",style: GoogleFonts.rubik(
                                    textStyle: footnote01,
                                    color: Colors. blueGrey.shade500,
                                     
                                  )),

                                ],
                              ),
                            ),
                          ),
                         ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text("Recent Invoice",style: GoogleFonts.rubik(
                    textStyle: headline ,
                    color: Colors. blueGrey.shade700,
                     
                  )),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("# 1098 | Table no. 03",
                              style: GoogleFonts.rubik(
                                textStyle: headline03 ,
                                color: Colors. blueGrey.shade700,
                                 
                              )),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.greenAccent.shade100,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text("Paid",style: GoogleFonts.rubik(
                                textStyle: body01 ,
                                color: Colors.green,
                                 
                              )),
                            ),
                          )
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
                                padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                child: ClipOval(
                                  child: SizedBox(
                                      height: 35,
                                      width: 35,
                                      child: Image.asset('assets/profile.jpg')),
                                ),
                              ),
                              Text("Peter Thornton",
                                  style:GoogleFonts.rubik(
                                    textStyle: body01 ,
                                    color: Colors. blueGrey.shade700,
                                     
                                  )),
                            ],
                          ),
                          Container(
                            child: Text("23,003",
                                style:GoogleFonts.rubik(
                                  textStyle: body01 ,
                                  color: Colors. blueGrey.shade900,
                                   
                                )),
                          )
                        ],
                      )

                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("# 1098 | Table no. 04",
                              style: GoogleFonts.rubik(
                                textStyle: headline03 ,
                                color: Colors. blueGrey.shade700,
                                 
                              )),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.yellow.shade100,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text("Unpaid",style: GoogleFonts.rubik(
                                textStyle: body01 ,
                                color: Colors.orange,
                                 
                              )),
                            ),
                          )
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
                                padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                child: ClipOval(
                                  child: SizedBox(
                                    height: 35,
                                      width: 35,
                                      child: Image.asset('assets/profile2.PNG')),
                                ),
                              ),
                              Text("A.Curtis",
                                  style:GoogleFonts.rubik(
                                    textStyle: body01 ,
                                    color: Colors. blueGrey.shade700,
                                     
                                  )),
                            ],
                          ),
                          Container(
                            child: Text("3,683",
                                style:GoogleFonts.rubik(
                                  textStyle: body01 ,
                                  color: Colors. blueGrey.shade900,
                                   
                                )),
                          )
                        ],
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),],
      ),
    );
  }
}
