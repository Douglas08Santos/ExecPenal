import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /**profile card */
    return Card(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      /**Infos User */
      Container(width: 200, height: 110, color: Colors.green),
      /**Picture Use */
      Container(width: 100, height: 110, color: Colors.black)
    ]));
  }
}
