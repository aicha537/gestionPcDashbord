import 'package:flutter/material.dart';
import 'package:gestionpcdashboard/Dashboard/dashboard.dart';
import 'package:gestionpcdashboard/Provider/provider.dart';
import 'package:gestionpcdashboard/Widgets_composants/sidemenu.dart';
import 'package:gestionpcdashboard/components/Pc_component.dart';
import 'package:gestionpcdashboard/components/apprenant_component.dart';
import 'package:gestionpcdashboard/components/attribution_component.dart';
import 'package:gestionpcdashboard/components/notification_component.dart';
import 'package:gestionpcdashboard/components/suivie_component.dart';
import 'package:provider/provider.dart';

class AccueilDash extends StatefulWidget {
  const AccueilDash({super.key});

  @override
  State<AccueilDash> createState() => _AccueilDashState();
}

class _AccueilDashState extends State<AccueilDash> {
  List<Widget> listeMenu = [
    Dashboard(),
    ApprenantComponent(),
    PcComponent(),
    AttributionComponent(),
    SuivieComponent(),
    NotificationComponent(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    currentIndex = Provider.of<RouteProvider>(context).currentIndex;
    return  Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SideMenu(),
          ),
          Expanded(
            flex: 4,
            child: listeMenu[currentIndex],
          )
        ],
      ),
    );
  }
}
