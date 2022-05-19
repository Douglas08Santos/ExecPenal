import 'package:exec_penal/details/CustomSizedBox.dart';
import 'package:flutter/material.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String nomeCompl = 'Douglas ALexandre dos Santos';
    const String cpf = '000.000.000-00';
    const String seccaoJud = 'JFPE';
    return Container(
      width: 200,
      height: 110,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$nomeCompl"),
          CustomSizedBox(0, 5),
          Text("$cpf"),
          CustomSizedBox(0, 5),
          Text("$seccaoJud"),
        ],
      ),
    );
  }
}
