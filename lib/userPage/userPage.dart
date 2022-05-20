// ignore_for_file: prefer_const_constructors

import 'package:exec_penal/details/CustomSizedBox.dart';
import 'package:exec_penal/homePage/calendarCard/taskCard.dart';
import 'package:exec_penal/homePage/home.dart';
import 'package:exec_penal/userPage/InfoUserCard.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  String nome = 'Douglas';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          BackButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          Text('Perfil')
        ],
      )),
      body: Column(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.green])),
          child: Container(
            width: double.infinity,
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(/**TODO: asssert image */
                      "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/22/22a4f44d8c8f1451f0eaa765e80b698bab8dd826_full.jpg"),
                ),
                CustomSizedBox(0, 10),
                Text(
                  nome,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                CustomSizedBox(0, 10),
                InfoUserCard()
              ],
            ),
          ),
        )
      ]),
    );
  }
}
