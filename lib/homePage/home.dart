import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Execução Penal - Home"),
        actions: [],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.abc),
        onPressed: () {},
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                /**profile card */
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /**Infos User */
                      Container(width: 200, height: 100, color: Colors.red),
                      /**Picture Use */
                      Container(width: 100, height: 100, color: Colors.black),
                    ],
                  ),
                  borderOnForeground: true,
                  shadowColor: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Text('Atividades'),
              width: 300,
              height: 200,
              color: Colors.red,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Text('Calendario - Resumo'),
              width: 300,
              height: 200,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
