import 'package:exec_penal/homePage/home.dart';
import 'package:flutter/material.dart';

import 'CustomDropDownButton.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  var rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Execução Penal"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [CustomDropDown()],
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    /**TODO: Validator */
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: "Digite seu CPF: ",
                      prefixIcon: const Icon(Icons.perm_identity),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    /**TODO: Validator */
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        hintText: "Digite sua senha",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  CheckboxListTile(
                    value: rememberMe,
                    title: const Text("Lembre-se de mim"),
                    contentPadding: EdgeInsets.zero,
                    activeColor: Colors.green,
                    onChanged: (newValue) {
                      setState(() {
                        rememberMe = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  /**TODO: proxima pagina */
                                  const HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                    ),
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Não possui registro?"),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        /**TODO: proxima pagina */
                                        const RegisterPage()));
                          },
                          child: const Text('Criar nova conta.'))
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Text('Rodrigo Mattos'),
                  Text('TRF-5 / JFPE')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
