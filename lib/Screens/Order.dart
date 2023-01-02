import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../OrderList.dart';
import '../theme.dart';
class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order>with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    var _tabController1;
    _tabController1 = TabController(length: 2, vsync: this);
    ScrollController listScrollController = ScrollController();

    return Scaffold(
      body: CustomScrollView(
        controller: listScrollController ,
        slivers:<Widget> [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            elevation: 0,
            backgroundColor: Colors.white,
            title:Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text('The Grill',style: GoogleFonts.rubik(
                    textStyle: body02 ,
                    color: Colors.grey.shade900,
                    fontSize:18,
                  ),),
                ),
                Icon(Icons.keyboard_arrow_down_sharp,size: 30,color:Colors.grey.shade600 ,)
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,15,10,0),
                child: Text("Help",style: GoogleFonts.rubik(
                  textStyle: body02 ,
                  color: Colors.grey.shade900,
                  fontSize:16,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,25,0),
                child: Icon(Icons.messenger_outline,size: 23,color:Colors.grey.shade600 ,),
              ),
            ],
            bottom: TabBar(
                isScrollable: false,
                indicatorWeight: 2,
                unselectedLabelColor: grey1,
                labelColor: Colors.red,
                indicatorColor: Colors.red,
                // indicatorSize: TabBarIndicatorSize.label ,
                controller: _tabController1,
                tabs : [
                  Tab(
                      child:Padding(
                        padding: const EdgeInsets.fromLTRB(6,0,6,0),
                        child: Text('Order',style: GoogleFonts.rubik(
                          textStyle: body02 ,
                        )),
                      )
                  ),
                  Tab(
                      child:Padding(
                        padding: const EdgeInsets.fromLTRB(6,0,6,0),
                        child: Text('KOT',style: GoogleFonts.rubik(
                          textStyle: body02 ,
                        )),
                      )
                  ),
                ]
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
                [ Container(
                  height: 800,
                  color: Colors.white,
                  child: TabBarView(
                    controller: _tabController1,
                    children: [
                      OrderList(),
                      Container(
                        height: 200,
                        child: Center(child: Text("KOT")),
                      ),
                    ],
                  ),
                ),
            ],
            ),

          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(5)
        ),
      onPressed: (){
        if (listScrollController.hasClients) {
          final position = listScrollController.position.minScrollExtent;
          listScrollController.jumpTo(position);
        }
      },
      child: const Icon(Icons.keyboard_arrow_up,size: 45,),
      ),
    );
  }
}
