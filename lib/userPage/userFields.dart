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

  bool _isReadonlyNome = true;
  bool _isReadonlyEmail = true;
  bool _isReadonlyTelefone = true;

  Icon saveIcon = Icon(Icons.save);
  Icon editIcon = Icon(Icons.edit);

  Icon nomeIcon = Icon(Icons.edit);
  Icon emailIcon = Icon(Icons.edit);
  Icon telIcon = Icon(Icons.edit);

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
          Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  readOnly: _isReadonlyNome,
                  controller: _controllerNome,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _isReadonlyNome = !_isReadonlyNome;
                      _isReadonlyNome
                          ? nomeIcon = editIcon
                          : nomeIcon = saveIcon;
                    });
                  },
                  icon: nomeIcon),
            ],
          ),
          CustomSizedBox(0, 10),
          Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  readOnly: _isReadonlyEmail,
                  controller: _controllerEmail,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _isReadonlyEmail = !_isReadonlyEmail;
                      _isReadonlyEmail
                          ? editIcon = editIcon
                          : editIcon = saveIcon;
                    });
                  },
                  icon: editIcon),
            ],
          ),
          CustomSizedBox(0, 10),
          Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  readOnly: _isReadonlyTelefone,
                  controller: _controllerTelefone,
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _isReadonlyTelefone = !_isReadonlyTelefone;
                      _isReadonlyTelefone
                          ? telIcon = editIcon
                          : telIcon = saveIcon;
                    });
                  },
                  icon: telIcon),
            ],
          ),
        ],
      ),
    );
  }
}
