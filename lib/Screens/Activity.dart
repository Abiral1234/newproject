import 'package:flutter/material.dart';
import 'package:untitled/OrderCard.dart';
class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Activity"),
      ),
    );
  }
}
