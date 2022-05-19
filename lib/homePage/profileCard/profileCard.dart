import 'package:exec_penal/details/CustomSizedBox.dart';
import 'package:exec_penal/homePage/profileCard/infoProfile.dart';
import 'package:exec_penal/homePage/profileCard/pictureProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      const InfoProfile(),
      Container(
        width: 2,
        height: 110,
        color: Colors.blue,
      ),
      /**Picture Use */
      const PictureProfile(),
    ]));
  }
}
