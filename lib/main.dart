import 'package:flutter/material.dart';
import 'package:gestionpcdashboard/components/apprenant_component.dart';
import 'package:gestionpcdashboard/components/attribution_component.dart';
import 'package:gestionpcdashboard/components/historique_compent.dart';
import 'package:gestionpcdashboard/components/home_component.dart';
import 'package:gestionpcdashboard/components/notification_component.dart';
import 'package:gestionpcdashboard/components/suivi_component.dart';
import 'package:gestionpcdashboard/utils/utils.dart';
import 'package:gestionpcdashboard/widgets/drawer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeComponent(),
    ApprenantComponent(),
    AttributionComponent(),
    SuiviComponent(),
    HistoriqueComponent(),
    NotificationComponent()
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text(widget.title)),
      body: Row(
        children: [
          DrawerWidget(
            onItemTapped: _onItemTapped,
          ),
          _widgetOptions[selectedIndex]
        ],
      ),
      // drawer: DrawerWidget(
      //   onItemTapped: _onItemTapped,
      // ),
    );
  }
}
