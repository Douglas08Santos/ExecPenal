import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('Atividades'),
          Container(
            width: 350,
            height: 200,
          )
        ],
      ),
      color: Colors.green,
    );
  }
}
