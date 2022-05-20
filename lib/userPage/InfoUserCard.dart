import 'package:exec_penal/details/CustomSizedBox.dart';
import 'package:flutter/material.dart';

class InfoUserCard extends StatelessWidget {
  const InfoUserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            child: Text(
              "Penas",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            color: Colors.green,
            width: double.maxFinite,
            height: 20,
            alignment: AlignmentDirectional.topCenter,
          ),
          CustomSizedBox(0, 10),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Delito 1"),
              CustomSizedBox(20, 0),
              Text("6 meses"),
            ]),
          ),
          CustomSizedBox(0, 10),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Delito 2"),
              CustomSizedBox(20, 0),
              Text("9 meses"),
            ]),
          ),
          CustomSizedBox(0, 10),
          //CustomSizedBox(double.maxFinite, 10)
        ],
      ),
    );
  }
}
