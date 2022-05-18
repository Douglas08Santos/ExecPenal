import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Registrar nova conta')),
        body: Center(
          child: Container(
              child: Text(
            'Todo: Register Page',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
        ));
  }
}
