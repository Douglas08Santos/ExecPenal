import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PictureProfile extends StatelessWidget {
  const PictureProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5.0),
        child: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(/**TODO: asssert image */
              "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/22/22a4f44d8c8f1451f0eaa765e80b698bab8dd826_full.jpg"),
        ),
        width: 100,
        height: 110,
        color: Colors.white);
  }
}
