import 'package:flutter/material.dart';

import 'OrderCard.dart';
import 'AddCard.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AddCard(),
              OrderCard('First Floor T4'),
              OrderCard('Roof T2'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              OrderCard('Balcony Table'),
              OrderCard('Table 31'),
              OrderCard('Mike Torello'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              OrderCard('Angus MacGyver'),
              OrderCard('Table 07'),
              OrderCard('Table 05'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              OrderCard('Table 09'),
              OrderCard('Table 01'),
              OrderCard('Rick Wright'),
            ],
          ),

        ],
      ),
    );
  }
}
