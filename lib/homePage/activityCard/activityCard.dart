import 'package:exec_penal/homePage/activityCard/summaryCard.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(child: Container(child: SummaryCard()), color: Colors.blue);
  }
}
