import 'package:exec_penal/details/CustomSizedBox.dart';
import 'package:exec_penal/homePage/activityCard/activityCard.dart';
import 'package:exec_penal/homePage/calendarCard/calendarCard.dart';
import 'package:exec_penal/details/customBottomNavBar.dart';
import 'package:exec_penal/homePage/cameraPage/cameraPage.dart';
import 'package:exec_penal/homePage/profileCard/profileCard.dart';
import 'package:exec_penal/loginPage/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String nome = 'Douglas';
  /**TODO: Criar uma List de Paginas para altenar com o BottomNavBar */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          children: [
            BackButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
            ),
            Text('JFPE - $nome')
          ],
        )),
        body: Column(children: [
          CustomSizedBox(0, 20),
          Row(
            /**profile card */
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: ProfileCard(),
                color: Colors.blue,
              ),
              CustomSizedBox(15, 0),
            ],
          ),
          CustomSizedBox(0, 20),
          /**Card de atividades */
          const ActivityCard(),
          CustomSizedBox(0, 20),
          /**Card para resumo do calendário */
          const CalendarCard(),
          CustomSizedBox(0, 20),
          Container(
            color: Colors.blue,
            child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => CameraPage()));
                },
                child: Text("Presença", style: TextStyle(color: Colors.white))),
          )
        ]));
  }
}
