import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Center(
          child: Column(
            children: <Widget>[
              Text(
                DateFormat('HH:mm:ss').format(DateTime.now()),
                style: TextStyle(color: Colors.black87, fontSize: 42, fontWeight: FontWeight.bold),
              ),
              Text(DateFormat('EEEE, dd LLLL yyyy').format(DateTime.now()), style: TextStyle(color: Colors.black54)),
            ],
          ),
        );
      },
    );
  }
}
