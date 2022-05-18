import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({Key? key}) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? seccional = null;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: seccional,
        hint: Text("Escolha sua seção judiciária"),
        items: <String>['JFAL', 'JFCE', 'JFPB', 'JFPE', 'JFRN', 'JFSE']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            seccional = newValue!;
          });
        });
  }
}
