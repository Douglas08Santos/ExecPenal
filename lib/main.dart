import 'package:exec_penal/homePage/home.dart';
import 'package:flutter/material.dart';

import 'loginPage/login.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Execução Penal',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: HomePage());
  }
}


/**MaterialApp(
      title: "Execução Penal",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    ); */