import 'package:exec_penal/details/CustomSizedBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            child: Text(
              "Resumo da pena",
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
              Text("Presença:"),
              CustomSizedBox(20, 0),
              Text("123"),
            ]),
          ),
          CustomSizedBox(0, 10),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("# Faltas:"),
              CustomSizedBox(20, 0),
              Text("11"),
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
