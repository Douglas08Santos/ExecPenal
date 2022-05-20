import 'package:exec_penal/details/CustomSizedBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserFields extends StatefulWidget {
  const UserFields({Key? key}) : super(key: key);

  @override
  State<UserFields> createState() => _UserFieldsState();
}

class _UserFieldsState extends State<UserFields> {
  late TextEditingController _controllerNome;
  late TextEditingController _controllerEmail;
  late TextEditingController _controllerTelefone;

  bool _isReadonlyNome = false;
  bool _isReadonlyEmail = false;
  bool _isReadonlyTelefone = false;

  @override
  void initState() {
    _controllerNome = TextEditingController(text: "Douglas");
    _controllerEmail = TextEditingController(text: "asdfg@gmail.com");
    _controllerTelefone = TextEditingController(text: "99999-9999");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            readOnly: _isReadonlyNome,
            controller: _controllerNome,
            decoration: InputDecoration(
              labelText: 'Nome',
              border: OutlineInputBorder(),
            ),
            onTap: () {
              setState(() {
                _isReadonlyNome = !_isReadonlyNome;
              });
            },
          ),
          CustomSizedBox(0, 10),
          TextField(
              readOnly: _isReadonlyEmail,
              controller: _controllerEmail,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              onTap: () {
                setState(
                  () {
                    _isReadonlyEmail = !_isReadonlyEmail;
                  },
                );
              }),
          CustomSizedBox(0, 10),
          TextField(
            readOnly: _isReadonlyTelefone,
            controller: _controllerTelefone,
            decoration: InputDecoration(
              labelText: 'Telefone',
              border: OutlineInputBorder(),
            ),
            onTap: () {
              setState(() {
                _isReadonlyTelefone = !_isReadonlyTelefone;
              });
            },
          ),
          CustomSizedBox(0, 10),
        ],
      ),
    );
  }
}
