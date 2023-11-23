import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gestionpcdashboard/utils/utils.dart';

class DrawerWidget extends StatefulWidget {
  Function onItemTapped;
  DrawerWidget({super.key, required this.onItemTapped});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    Function onItemTapped = widget.onItemTapped;
    return Container(
      color: Colors.white,
      width: kIsWeb
          ? MediaQuery.of(context).size.width * .25
          : MediaQuery.of(context).size.width * .8,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Dashboard'),
            selected: selectedIndex == 0,
            onTap: () {
              // Update the state of the app
              onItemTapped(0);
              // Then close the drawer
              //Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Apprenants'),
            selected: selectedIndex == 1,
            onTap: () {
              // Update the state of the app
              onItemTapped(1);
              // Then close the drawer
              //Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Suivis'),
            selected: selectedIndex == 2,
            onTap: () {
              // Update the state of the app
              onItemTapped(2);
              // Then close the drawer
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Historiques'),
            selected: selectedIndex == 3,
            onTap: () {
              // Update the state of the app
              onItemTapped(2);
              // Then close the drawer
              // Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
