import 'package:exec_penal/homePage/activityCard.dart';
import 'package:exec_penal/homePage/calendarCard.dart';
import 'package:exec_penal/homePage/customBottomNavBar.dart';
import 'package:exec_penal/homePage/profileCard.dart';
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
          title: const Text("Execução Penal - Home"),
          actions: [],
        ),
        body: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              /**profile card */
              const ProfileCard(),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          /**Card de atividades */
          const ActivityCard(),
          const SizedBox(
            height: 20,
          ),
          /**Card para resumo do calendário */
          const CalendarCard(),
          const SizedBox(
            height: 20,
          ),
        ]),
        bottomNavigationBar: CustomBottomNavBar());
  }
}
