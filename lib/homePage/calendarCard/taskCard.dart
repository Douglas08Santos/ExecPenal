import 'package:exec_penal/details/CustomSizedBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            child: Text(
              "Trabalho do dia",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            color: Colors.blue,
            width: double.maxFinite,
            height: 20,
            alignment: AlignmentDirectional.topCenter,
          ),
          CustomSizedBox(0, 10),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Data:"),
              CustomSizedBox(20, 0),
              Text("17/05/22"),
            ]),
          ),
          CustomSizedBox(0, 10),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Local:"),
              CustomSizedBox(20, 0),
              Text("E.E. ABC"),
            ]),
          ),
          CustomSizedBox(0, 10),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Progresso:"),
              CustomSizedBox(20, 0),
              Text("90%"),
            ]),
          ),
          CustomSizedBox(0, 10),
          //CustomSizedBox(double.maxFinite, 10)
        ],
      ),
    );
  }
}
