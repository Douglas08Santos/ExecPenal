import 'package:flutter/material.dart';

class CalendarCard extends StatelessWidget {
  const CalendarCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('Calendario'),
          Container(
            width: 350,
            height: 200,
          )
        ],
      ),
      color: Colors.red,
    );
  }
}
