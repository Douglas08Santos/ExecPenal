import 'package:exec_penal/homePage/calendarCard/taskCard.dart';
import 'package:flutter/material.dart';

class CalendarCard extends StatelessWidget {
  const CalendarCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(child: Container(child: TaskCard()), color: Colors.blue);
  }
}


/**
 * 
 * return Card(
        child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            width: 350,
            height: 210,
            child: SummaryCard()),
        color: Colors.green);
 */